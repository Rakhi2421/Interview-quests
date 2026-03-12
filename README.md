# Interview-quests
<details><summary>How does a pod access S3 in EKS securely?</summary><br><b>

  In EKS we use IAM Roles for Service Accounts (IRSA). We create an IAM role with S3 permissions and configure a trust relationship with the cluster’s OIDC provider. Then we annotate a Kubernetes ServiceAccount with that IAM role ARN. When a pod uses that ServiceAccount, AWS STS issues temporary credentials via AssumeRoleWithWebIdentity, allowing the pod to access S3 without storing AWS keys.
  High-Level-Architecture
  ```bash
  Pod
 │
 │ uses
 ▼
ServiceAccount (annotated with IAM role)
 │
 ▼
OIDC Identity Provider
 │
 ▼
IAM Role (temporary credentials)
 │
 ▼
S3 API
```

- Step 1: Enable OIDC Provider for EKS
  - IRSA works using OIDC identity provider.
    ```bash
    Check OIDC:

    aws eks describe-cluster \
    --name my-cluster \
    --query "cluster.identity.oidc.issuer"

    Then associate OIDC:
    eksctl utils associate-iam-oidc-provider \
    --cluster my-cluster \
    --approve
    ```
- Step 2: Create IAM Policy for S3 Access
  ```bash
    Example policy:
    JSON
  {
  "Version": "2012-10-17",
  "Statement": [
   {
     "Effect": "Allow",
     "Action": [
       "s3:GetObject",
       "s3:PutObject",
       "s3:ListBucket"
     ],
     "Resource": [
       "arn:aws:s3:::my-app-bucket",
       "arn:aws:s3:::my-app-bucket/*"
     ]
   }
  ]
  }
  Create policy:
  aws iam create-policy \
  --policy-name S3AccessPolicy \
  --policy-document file://policy.json
  ```
  - Step 3: Create IAM Role for ServiceAccount
    - Trust relationship must allow EKS OIDC.
      ```bash
      {
      "Version": "2012-10-17",
      "Statement": [
      {
       "Effect": "Allow",
       "Principal": {
         "Federated": "arn:aws:iam::<ACCOUNT_ID>:oidc-provider/oidc.eks.region.amazonaws.com/id/EXAMPLE"
       },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
       "StringEquals": {
         "oidc.eks.region.amazonaws.com/id/EXAMPLE:sub": "system:serviceaccount:default:s3-sa"
       }
      }
      }
      ]
      }
      ```
      Attach S3 policy to this IAM role.
  - Step 4: Create Kubernetes ServiceAccount
    - Now create ServiceAccount with IAM role annotation.
      ```bash
      YAML
      apiVersion: v1 
      kind: ServiceAccount
      metadata:
        name: s3-sa
        namespace: default
        annotations:
           eks.amazonaws.com/role-arn: arn:aws:iam::123456789012:role/S3AccessRole

      This annotation links:
      ServiceAccount → IAM Role
      ```
  - Step 5: Use ServiceAccount in Pod
    ```bash
    YAML
    apiVersion: v1
    kind: Pod
    metadata:
      name: s3-test
    spec:
      serviceAccountName: s3-sa
      containers:
       - name: aws-cli
         image: amazon/aws-cli
         command: ["sleep","3600"]
      ```
    Now the pod automatically gets AWS credentials.
  - How the Authentication Works Internally
  - When the pod starts:
    1. Kubernetes mounts a ServiceAccount token.
    2. Pod sends token to AWS STS.
    3. AWS verifies it via OIDC provider.
    4. AWS returns temporary credentials.
    5. Pod uses credentials to access S3.
</b></details>

<details><summary>What is serviceAccountName?</summary><br><b>

  serviceAccountName defines which ServiceAccount the pod should use for authentication.
  - A ServiceAccount provides:
    1. An identity for the pod
    2. API access permissions via RBAC
    3. A token mounted inside the pod.  
  Service accounts are Kubernetes objects.
- It is defined inside the pod spec.
  - What Happens Internally?
    - When the pod starts:
      1. Kubernetes finds the specified ServiceAccount.
      2. It generates a token for that account.
      3. The token is mounted inside the container.
      4. Mounted location: /var/run/secrets/kubernetes.io/serviceaccount/
      5. Files available there:
         - token
         - ca.crt
         - namespace
  Applications inside the pod use this token to talk to the **Kubernetes API server.
</b></details>
