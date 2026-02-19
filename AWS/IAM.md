## IAM
<details>
<summary> Q1: What is IAM and why is it used? </summary><br><b>

  - AWS Identity and Access Management (IAM) is a service used to securely control authentication and authorization for AWS resources. It allows us to define who can access AWS resources and what actions they can perform.
  - for eg: In production, developers may need access to Amazon Simple Storage Service buckets but not Amazon Elastic Compute Cloud instances. IAM allows restricting access accordingly.
  - For production best practice: Always follow the principle of least privilege.
</b> </details>

<details>
<summary>Q2: What is the difference between Authentication and Authorization? </summary><br><b>

   - Authentication = Who you are
   - Authorization = What you can do
   - Example: Authentication: Login using username/password  && Authorization: Permission to access Amazon S3 bucket
  </b> </details>

<details>
<summary>Q3: What is the difference between Root User and IAM User? </summary><br><b> 

  Root User:
  - Full access to entire AWS account
  - Created when AWS account is created
  - Should never be used daily

IAM User:
 - Created for specific users
 - Limited permissions
 - Used for daily operations

Production best practice: Enable Multi-Factor Authentication on root user and avoid using it.

  </b>  </details>

 <details><summary>What are IAM Users, Groups, Roles, and Policies?</summary><br><b>

   - IAM User → Individual identity
   - IAM Group → Collection of users
   - IAM Role → Temporary identity with permissions
   - IAM Policy → Permission document in JSON format
 </b></details>

<details><summary>Q5: What is IAM Policy? </summary><br><b>

  IAM policy defines permissions using JSON.
  ```bash
  {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:GetObject",
      "Resource": "*"
    }
  ]
}
```
This allows read access to Amazon Simple Storage Service.
</b></details>

<details><summary>Q6:What is difference between Managed Policy and Inline Policy? </summary><br><b>

  Managed Policy:
   - Reusable
   - Managed separately

Inline Policy:
 - Attached directly to user/role
 - Not reusable

Production best practice: Use managed policies.
</b></details>

<details><summary>Q7:Explain IAM Role </summary><br><b>

  IAM Role is temporary identity assumed by AWS services.  
  Example: Amazon Elastic Compute Cloud instance accessing Amazon Simple Storage Service.
</b></details>

<details><summary>Q8: How EC2 accesses S3 securely? </summary><br><b>

  Using IAM Role.  
  Steps:
  1. Create IAM role
  2. Attach S3 policy
  3. Attach role to EC2 instance  
Now EC2 accesses S3 without access keys.
</b></details>

<details><summary>What is Security Token Service? </summary><br><b>

  AWS Security Token Service provides temporary credentials.
  Used for:
  - Role assumption
  - Cross-account access
</b></details>

<details><summary>Q10: What is Least Privilege Principle? </summary><br><b>

  Give only required permissions.  
  Example: In Action Instead of: s3:* , use s3:GetObject
</b></details>
---
# Real-World DevOps Scenarios
<details><summary>EC2 accessing S3</summary><br><b>

  Create role:
  ```bash
   aws iam create-role --role-name EC2-S3-Role
  ```
  Attach policy:
  ```bash
  aws iam attach-role-policy \
  --role-name EC2-S3-Role \
  --policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess
  ```
 Attach role to EC2.
</b></details>

<details><summary>EKS pod accessing AWS services (IRSA)</summary><br><b>

  IAM Roles for Service Accounts allows Kubernetes pods to access AWS securely without credentials.  
  Flow:
  ```bash
  Pod → Service Account → IAM Role → AWS Service
  ```
</b></details>

<details><summary>Jenkins accessing AWS</summary><br><b>
  
  Best practice:
  - Use IAM role instead of access keys.
  - Jenkins running on EC2 assumes role.    
</b></details>

<details><summary>Cross-account access</summary><br><b>

  Account A role:
  ```bash
 {
  "Effect": "Allow",
  "Principal": {
    "AWS": "arn:aws:iam::AccountB:root"
  },
  "Action": "sts:AssumeRole"
}
```
</b></details>
---
## Troubleshooting IAM Issues
<details><summary>Problem: AccessDenied error</summary><br><b>

  ```bash
AccessDenied: User not authorized
```
Check:
1. Policy attached?
2. Correct resource ARN?
3. Explicit deny?
```bash
Debug:
aws sts get-caller-identity
```  
</b></details>

---
## Production Best Practices

- Always use roles instead of access keys
- Enable Multi-Factor Authentication
- Use least privilege
- Rotate credentials regularly
- Enable CloudTrail logging
- Avoid using root account
- Use IAM roles for EC2 and EKS

## Section 8: Common Interview Trick Questions

<details><summary>1: Can EC2 access S3 without access keys?</summary><br><b>
  Yes, using IAM role.
</b></details>

<details><summary>2: What happens if explicit deny exists?</summary><br><b>
  Explicit deny always overrides allow.
</b></details>

<details><summary>3: Difference between role and user?</summary><br><b>
  User = permanent identity  
  Role = temporary identity
</b></details>

## Important Policy Examples

<details><summary>S3 Read Only Policy</summary><br><b>

  ```bash
   {
 "Version": "2012-10-17",
 "Statement": [
   {
     "Effect": "Allow",
     "Action": ["s3:GetObject"],
     "Resource": "*"
   }
 ]
}
```
  
</b></details>
<details><summary>EC2 Full Access Policy</summary><br><b>
  
  ```bash
  {
 "Effect": "Allow",
 "Action": "ec2:*",
 "Resource": "*"
}
```
  
</b></details>

<details><summary>Least Privilege Policy</summary><br><b>

  ```bash
  {
 "Effect": "Allow",
 "Action": "s3:GetObject",
 "Resource": "arn:aws:s3:::my-bucket/*"
}
```
  
</b></details>

<details><summary>How to Explain IAM in Interview (Best Answer)</summary><br><b>
  IAM is used to securely control access to AWS resources. In production, we use IAM roles instead of access keys to provide secure access to services like EC2 and EKS. We follow least privilege principle and use IAM policies to define permissions. We also use temporary credentials through role assumption to improve security.

</b></details>






