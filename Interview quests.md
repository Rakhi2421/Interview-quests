<details>
<summary>Terraform </summary>

<br>

1. What is a statefile?
2. What are your day-to-day activities as a DevOps Engineer?
3. Where do you store the statefile?
4. What is a null resource in Terraform?
5. Terraform code to deploy an EC2 instance.
6. What will appear in the Terraform plan if you comment out a resource block in the above code?
7. Terraform taint.
8. Terraform refresh.
9. How to create 10 EC2 machines with incremental values like 0,1,2, etc.
10. How to terminate 9 EC2 instances and leave one EC2 machine running.
11.What will happen if someone changes resource values on the console and you do a Terraform apply?
12. What is a Terraform module, and what is its purpose?
13. What common challenges have you faced with Terraform?
14. How do you manage and protect Terraform state files?
15. How do you detect and fix configuration drift?
16. What’s your approach to managing secrets securely in Terraform?
17. Why is a remote backend considered a best practice?
18. How do you structure Terraform modules to support multiple environments without duplication?
19. How do you detect and resolve Terraform state drift caused by manual console changes?
20. How do you safely roll out a Helm chart upgrade when schema changes are involved?
21. IaC tools used
22. Benefits of Terraform
23. Managing multiple environments (dev, test, prod)
24. Terraform workspaces
25. Input variables vs local variables
26. Purpose of output values
27. Importing existing AWS infrastructure into Terraform
</details>

<details>
<summary> Jenkins </summary>

<br>

1. Difference between Jenkins Declarative vs Scripted Pipeline?
2. CI/CD workflow.
3. What is the difference between a single Jenkins CI/ CD pipeline and multiple pipelines?
4. What are the issues of using a single pipeline vs. multiple pipelines?
5. Current Jenkins version.
6. Write a Jenkins pipeline script for Terraform deployment.
7. Explain the CI/CD workflow you follow and the kind of pipeline you use. How do you define and invoke pipelines in Jenkins?
8. What are shared libraries in Jenkins, and how are they written and defined?
9. What kind of applications do you deploy using Jenkins pipelines, and what deployment tools do you use?
10. If the Jenkins pipeline runs but the build doesn’t happen, what possible issues could be causing it?
11. What is the purpose of a webhook, and how is it used in a CI/CD pipeline?
12. Which CI/CD tools have you used in production?
13. How do you integrate tools like SonarQube, Docker, and Trivy into pipelines?
14. How do you trigger a GitHub Actions workflow across repositories?
15. What is repository_dispatch, and when would you use it?
16. How would you trigger a pipeline in Repo A based on changes in Repo B?
17. What branching strategy do you follow, and how do you handle merges to avoid breaking the release branch? If a bug appears in production, what’s your approach to resolving it?
18. Describe your typical deployment flow and CI/CD workflow. What stages do you define in your Jenkins pipeline, and how do you ensure full quality checks during deployment?
19. How do you use Jenkins shared libraries? Explain their typical structure and how they are integrated into your Jenkinsfiles.
20. Explain the end-to-end CI/CD pipeline you have designed. Why did you choose those tools?
21. Difference between CI vs CD with real examples from your project
22. How do you handle secrets management in pipelines and production?
23. Explain Git branching strategies you’ve used in production
24. What happens when a build succeeds but deployment fails? How do you debug?
25. How do you design a CI/CD pipeline that supports both containerized and serverless deployments?
26. What checks would you enforce before allowing a pipeline to deploy to production?
27. Describe a scenario where a pipeline rollback is more dangerous than a hotfix.
28. Explain a CI/CD pipeline end-to-end
29. CI/CD pipeline: built from scratch vs existing setup
30. AWS services used for CI/CD
31. Key components of a CI/CD pipeline
32. Configuration files used in CodeBuild and CodePipeline
33. CI/CD tools used apart from AWS
34. Explain your CI/CD pipeline flow and how you manage deployments.
35. What do you do during Continuous Delivery (CD)?
36. How do you manage your pipeline configurations and rollback strategies?
</details>

<details>
	
<summary> Docker </summary>
	
<br>

1. Entry point vs CMD in a Dockerfile.
2. Add vs Copy in Dockerfile.
3. Docker lifecycle.
4. What are the stages in a Docker image build? Why do we use ENTRYPOINT and CMD instructions?
5. Which container registry do you use for storing Docker images?
6. Are you aware of security scanning tools? How do you scan Docker images—both during build and at the registry level? Are you using any extensions or tools for image scanning?
7. How do you pass environment variables during Docker build commands? What services do you use for storing Docker images?
8. Container services in AWS
9. Difference between Amazon ECS and Amazon EKS
10. When to choose ECS over EKS

</details>

<details>
	
<summary> K8s </summary>

<br>


1. Describe Kubernetes architecture.
2. Difference between Secrets and ConfigMap in Kubernetes?
3. What is a ReplicaSet?
4. Is it possible to run Kubernetes in a single-node local environment?
6. How do you create and manage Kubernetes clusters (using tools like Terraform), and what are the master and worker nodes?
7. What are common Kubernetes errors you’ve faced (like CrashLoopBackOff, ImagePullError), and how did you resolve them?
8. What is the command to access a pod and how can you define or create a Kubernetes class or object?
9. Explain the folder structure of a basic Helm chart. What commands do you use to deploy with Helm?
10. Deployment vs StatefulSet? what’s the real difference?
11. When should you choose a StatefulSet over a Deployment?
12. Can Deployments use persistent volumes? How does this differ from StatefulSets?
13. Why might a StatefulSet pod fail after being rescheduled to another Availability Zone?
14. How do PVs and PVCs behave across zones in EKS (and Kubernetes in general)?
15. What is a DaemonSet, and when is it the right choice?
16. Need more than one pod per node what are the alternatives to DaemonSets?
17. What is a Pod Disruption Budget (PDB), and why does it matter?
18. How do you manage certificate rotation in on-prem Kubernetes clusters?
19. What challenges arise in multi-node, multi-AZ Kubernetes environments?
20. How does the Kubernetes scheduler decide pod placement?
21. What happens when a StatefulSet pod can’t mount its volume after moving to another node?
22. Difference between Docker CMD and ENTRYPOINT
23. How do you reduce Docker image size?
24. Explain Kubernetes architecture (control plane vs worker nodes)
25. What happens when a pod is in CrashLoopBackOff? Step-by-step debugging
26. How do Services, Ingress, and Load Balancers work together?
27. When would you choose HPA vs VPA?
28. How do you perform zero-downtime deployments in Kubernetes?
29. EC2 vs ECS vs EKS when and why would you recommend each to a client?
30. How would you design a highly available application across multiple AZs?
31. How do Auto Scaling Groups actually work behind the scenes?
32. Difference between Security Groups and NACLs with real use cases
33. How do you manage infrastructure using Terraform in a team environment?
34. How do you handle Terraform state locking and drift?
35. Application deployed successfully but not accessible in production how do you troubleshoot?
36. What metrics do you monitor at application vs infrastructure level?
37. Difference between monitoring and observability
38. How do you set up alerts without alert fatigue?
39. Explain a production outage you handled and what you learned from it.
40. What steps would you take if pods are stuck in ContainerCreating due to storage issues?
41. How do you debug DNS resolution failures inside Kubernetes pods?
42. When would you choose NodePort over Ingress, even in production?
43. Difference between liveness vs readiness probes
44. ClusterIP vs NodePort vs LoadBalancer
45. How a ClusterIP service can still be accessed
46. Where Kubernetes logs are generated and stored
47. How Kubernetes knows where logs are located
48. How to fetch older logs (1 month+)
49. Types of Kubernetes Network Policies
50. Rolling updates and rollbacks
51. How to check deployment or pod versions
52. How applications are exposed outside a K8s cluster
53. Which deployment strategies are used in Kubernetes?
54. What is Ingress?
55. Difference between Pod, Deployment, StatefulSet, DaemonSet?
56. What are Kubernetes Services and their types?
57. What are Kubernetes Volumes?
58. How do you design IAM roles for Kubernetes workloads using least privilege?
59.	What are common mistakes teams make with Secrets Manager and environment variables?
60. Explain a real scenario where over-permissioned IAM caused production risk.
61. How do you handle authentication for EKS clusters and store secrets securely in your environment?
62. What is email signing and Helm chart signing? Which tools do you use to sign Helm charts?
63. Helm charts and their usage
64. Handling failures and rollbacks
65. How monitoring integrates with TomEE servers
66. Vertical scaling vs Horizontal scaling
67. Types of Auto Scaling policies in AWS
68. How do you troubleshoot a CrashLoopBackOff? What causes it?
69. If a pod is down, how do you troubleshoot it?
70. Why are StatefulSets useful, and how do they differ from Deployments?
71. If a pod loses connectivity, how do you find and fix the issue?
72. How do you secure an AKS/Kubernetes cluster that’s publicly accessible?
73. How do you deploy microservices using Ansible?
74. What is Helm and why is it used?
75. What are Helm Charts and Templates?
76. How to create ConfigMaps using Helm?
77. Difference between Persistent Volume (PV) and Persistent Volume Claim (PVC).
78. How do you manage Kubernetes YAML manifests across environments?
79. Where and how do you store cluster information securely?
</details>

<details>
<summary> Scripting </summary>
	
<br>

1.  Write a script to find the largest and smallest elements of an integer array.

</details>

<details>
<summary> Ansible </summary>
<br>
	
  1. What are Ansible Roles and Handlers?
  2.Difference between Ansible Roles vs Collections?
  3. How do you store Terraform state files per environment?
  4. What is the purpose of Terraform modules?
</details>

<details>
<summary> Git </summary>
<br>
1. Difference between git fetch and git pull.
2. How do you handle merge conflicts in Git?
3. How can we remove a file from Git without removing the filesystem?
4. How can we discover if a branch has already been merged in Git?
</details>

<details>
<summary> Cloud </summary>
<br>

1. Application Load Balancer vs Network Load Balancer.
2. What is Route53?
3. Experience with GCP Cloud?
4. How to connect on-premise to an application in a VPC cloud.
5. What is CloudTrail?
6. What is a Load Balancer and Auto Scaling?
7. What is Databricks?
8. How do you manage and connect services like DBs, EC2, EKS, or ECS? Include the command to connect to ECS.
9. What are the different ways to deploy NGINX on AWS?
10. What are the prerequisites for VPC peering?
11. What issues arise with overlapping CIDR blocks?
12. How do you enable communication between overlapping VPCs?
13. What is a Transit Gateway, and how does it simplify VPC connectivity?
14. How can a jump/bastion host help in complex network setups?
15. Can you explain transitive routing between multiple VPCs?
16. When would you prefer EC2 over container-based services?
17. How do you handle EC2 patching in production?
18. What happens to EC2 when an Auto Scaling instance is terminated?
19. Why should IAM roles be used instead of access keys?
20. How do you design least-privilege policies for CI/CD pipelines?
21. Difference between IAM role trust policy and permission policy?
22. How do you secure S3 buckets in a production environment?
23. When would you use S3 versioning?
24. How do you prevent accidental deletion of critical objects?
25. Why are private subnets important for backend workloads?
26. How does NAT Gateway work internally?
27. Difference between Security Groups and NACLs in real use cases?
28. What metrics are critical to monitor for EC2 and ALB?
29. How do you reduce CloudWatch cost in large environments?
30. When do you use logs vs metrics vs alarms?
31. When do you choose ALB over NLB?
32. How does health check failure impact traffic routing?
33. Can one ALB serve multiple applications?
34. How do you manage image versioning and cleanup in ECR?
35. How do you scan container images for vulnerabilities?
36. How would you design a multi-AZ, cost-optimized architecture for a spiky workload using EC2, ALB, and Auto Scaling?
37. How do you debug intermittent 502 errors coming from ALB when backend pods are healthy?
38. What challenges did you face while deploying workloads across AWS and Azure together?
39. AWS services worked on (EC2, RDS, EBS, EFS, etc.)
40. Difference between RDS and traditional databases
41. Database upgrades in AWS without downtime
42. EC2 standalone vs clustered setups
43. Enabling Prometheus metrics for EC2
44. CloudWatch use cases
45. EBS vs EFS
46. Setting up Kubernetes on EKS
47. What is Amazon EC2 and why is it used in DevOps environments?
48. What are the different EC2 instance types and their ideal use cases?
49. Explain On-Demand, Reserved, and Spot Instances.
50. How does EC2 Auto Scaling help maintain availability and cost efficiency?
51. What are EC2 Security Groups and how are they different from Network ACLs?
52. What’s the difference between EBS and Instance Store volumes?
53. How do you take a snapshot of an EBS volume and create an AMI?
54. What is an AMI and how do you share it across regions or accounts?
55. What are EC2 placement groups and what types are available?
56. What is the lifecycle of an EC2 instance?
57. What happens when you stop vs terminate an EC2 instance?
58. How do you connect to an EC2 instance securely using SSH?
59. What is the use of EC2 user data and metadata?
60. How do you attach and detach EBS volumes to running instances?
61. What is an Elastic IP address and when should you use it?
62. What are key pairs in EC2 and how are they managed?
63. How can you monitor EC2 performance metrics using CloudWatch?
64. What are the benefits of using EC2 launch templates over launch configurations?
65. How do you automate EC2 provisioning with Terraform or CloudFormation?
66. How do you troubleshoot EC2 instances that are unreachable via SSH?
67. What is the difference between public and private EC2 instances in a VPC?
68. How do you resize (scale up or down) an EC2 instance?
69. How do you configure load balancing for EC2 instances?
70. What is hibernation in EC2 and when should you use it?
71. How do you ensure high availability for EC2-hosted applications?
72. What are EC2 instance retirement notices and how do you handle them?
73. How can you optimize EC2 cost in production environments?
74. How does AWS Systems Manager help in managing EC2 instances?
75. What’s the difference between EC2 Spot Fleet and EC2 Auto Scaling Group?
76. How can you ensure data persistence and backup for EC2 instances?
77. How do you create AWS Lambda functions and manage the artifacts for deployment? What options do you use to push artifacts to Lambda?
78. How do you establish a connection with databases in your deployments or infrastructure setup?
79. AWS services I’ve worked with so far
80. Core components of an Amazon VPC
81. Purpose of VPC and use of public vs private subnets
82. Role of Internet Gateway and NAT Gateway
83. What is IAM and its components
84. Difference between IAM User Group and IAM Role
85. Real-time scenarios where IAM Roles are required
86. Types of storage supported in AWS
87. Difference between S3, EBS, and EFS
88. Is Amazon S3 storage limited or unlimited?
89. Difference between ALB and NLB?
90. Difference between Docker Swarm and Kubernetes?
91. What is LDAP?
92. Difference between Nginx and Apache?
93. What is a Web Server?
94. How do you login to an EC2 Linux instance?
95. How do you ensure stability and efficiency across your CI/CD and cloud environments?
96. Difference between Load Balancer and Routing?
97. How do you reduce or manage cloud costs effectively?
98. What is the Terraform lifecycle, and how do you handle state management?
</details>



<details>
<summary> Linux</summary>
<br>

1. How do you fix 'Permission Denied' errors on EC2?
2. How do you verify file ownership and permissions?
3. How do you change directory ownership for Jenkins deployments?
4. How do you identify files recently modified by root user?
5. How do you restore permission of system files accidentally changed?
6. How do you check sudo privileges of a user?
7. How do you give only read-only access to a file?
8. How do you check which user modified a file last?
9. How do you allow non-root user to run Docker commands?
10. How do you prevent unauthorized permission changes?
11. How do you verify if Nginx or Apache is running after deployment?
12. How do you restart a failed service automatically?
13. How do you debug 'address already in use' errors?
14. How do you verify deployed app files on EC2?
15. How do you clear old build artifacts before deployment?
16. How do you validate environment variables for app startup?
17. How do you roll back a failed deployment?
18. How do you test app startup script manually?
19. How do you check if EC2 has correct IAM role access?
20. How do you confirm health of EC2 target behind ALB?
21. How do you check EBS volume attachment and size?
22. How do you identify which mount point is using which EBS?
23. How do you increase EC2 disk size safely?
24. How do you create a snapshot of EBS volume?
25. How do you mount an unmounted EBS volume?
26. How do you troubleshoot 'read-only file system' errors?
27. How do you check free space inside a specific folder?
28. How do you archive old log files automatically?
29. How do you sync data between two EC2 instances?
30. How do you back up EC2 files to S3 bucket?
31. User unable to write files despite free disk space — how to troubleshoot
32. Logs, permissions, filesystem, and inode-related issues
33. Linux commands to check disk space?
34. Commands to delete files / free disk space?
35. Difference between Hard link and Soft link.
36. A user can’t access a file — how do you grant permissions?
37. A process is using high CPU/memory — how do you monitor and manage it?
38. A user can’t SSH into a server — how do you troubleshoot the issue?
</details>


<details>
	<summary> 𝐏𝐫𝐨𝐦𝐞𝐭𝐡𝐞𝐮𝐬 & 𝐌𝐨𝐧𝐢𝐭𝐨𝐫𝐢𝐧𝐠 </summary>
📊 Monitoring, Logging & Observability
✅ How do you correlate application logs with Kubernetes pod restarts?
✅ What alerts are meaningful vs noisy in a high-traffic production system?
✅ What signals indicate performance degradation before users complain?
🔐 Security, Compliance & DevSecOps

🚨 Production Support & Incident Handling
✅ Walk through how you’d handle a production outage during peak traffic hours.
✅ How do you decide whether to scale, rollback, or failover during an incident?
✅ What data do you capture in a post-incident RCA to prevent recurrence?


How Prometheus works with Kubernetes
How Prometheus knows what to scrape
Who exposes metrics for Prometheus
Configuring Prometheus in Kubernetes
Prometheus vs CloudWatch – when and why
Moving logs/metrics to ELK / Splunk
What metrics are shared with a monitoring team
How do you monitor AWS infrastructure using CloudWatch?

</details>

<details>
	
<summary> Sharing some of the actual questions I was asked 👇</summary>

<br>

1. How do you troubleshoot performance issues in a production AWS environment using monitoring and logs?
2. How do you optimize cloud costs in AWS or Azure under strict budget constraints?
3. How do you secure AWS and Azure infrastructure, especially IAM, KMS, and network security?
4. How do you manage secrets and credentials securely in CI/CD pipelines?
5. How does your CI/CD process work using Azure DevOps or GitHub Actions?
6. What is the difference between a Docker image and a container?
7. What is the difference between git merge and git rebase?
8. How do you rollback code in production using Git or GitHub?
9. How do you handle production incidents when things are not fully in your control?
10. Can you describe a real production issue you faced and how you resolved it?
11. How do you protect data immediately during a critical production failure?
12. What should you NOT do during a production incident, even under management pressure?
13. How do you handle pressure when leadership and stakeholders question you during an outage?
14. How do you investigate issues when there is no documentation or prior knowledge of the system?
15. How do you connect services across multi-cloud environments like AWS and Azure?
16. How do you monitor traffic spikes and system health without using paid APM tools?
17. How do you decide whether to rollback or move forward during a failed deployment?
18. How do you access private virtual machines securely?
19. What is the difference between public and private subnets, and when should each be used?
20. How do you troubleshoot database connection failures during peak traffic?
21. AWS monitoring tools used
22. Monitoring applications and infrastructure
23. Scripting languages used for automation
24. Hands-on experience managing production environments
</details>




<details>
<summary>Learn K8s </summary>
[!Learn K8s](https://media.licdn.com/dms/image/v2/D5622AQGAJHhFvTMnMQ/feedshare-shrink_800/B56Zsd2BawHYAg-/0/1765732271775?e=1771459200&v=beta&t=cwG7TCJeLdkxnKJEaXFfgqmrhAGuLbyAojGf2oR-EwQ)

𝐄𝐯𝐞𝐫𝐲𝐨𝐧𝐞 𝐰𝐚𝐧𝐭𝐬 𝐭𝐨 “𝐥𝐞𝐚𝐫𝐧 𝐊𝐮𝐛𝐞𝐫𝐧𝐞𝐭𝐞𝐬”…
𝐛𝐮𝐭 𝐦𝐨𝐬𝐭 𝐩𝐞𝐨𝐩𝐥𝐞 𝐪𝐮𝐢𝐭 𝐢𝐧 𝐭𝐡𝐞 𝐟𝐢𝐫𝐬𝐭 𝐰𝐞𝐞𝐤.

Why?

Because Kubernetes looks simple on the surface…
but once you start, you’re hit with new terms every 5 minutes:

Pods
ReplicaSets
Ingress
Service Accounts
StatefulSets
ConfigMaps
Helm
GitOps

It feels like learning 10 different subjects at once.
That’s the REAL problem.

The Solution: Learn Kubernetes in the Right Sequence

Kubernetes isn’t hard — it’s layered.
If you learn it step-by-step, everything finally makes sense.

𝐇𝐞𝐫𝐞’𝐬 𝐭𝐡𝐞 𝐬𝐞𝐪𝐮𝐞𝐧𝐜𝐞 𝐭𝐡𝐚𝐭 𝐚𝐜𝐭𝐮𝐚𝐥𝐥𝐲 𝐰𝐨𝐫𝐤𝐬 (𝐚𝐧𝐝 𝐩𝐫𝐞𝐯𝐞𝐧𝐭𝐬 𝐨𝐯𝐞𝐫𝐰𝐡𝐞𝐥𝐦):

𝐂𝐨𝐫𝐞 𝐂𝐨𝐧𝐜𝐞𝐩𝐭𝐬 & 𝐀𝐫𝐜𝐡𝐢𝐭𝐞𝐜𝐭𝐮𝐫𝐞::
Understand what K8s *is*, how the Control Plane works, and what Nodes & Pods are.

𝐖𝐨𝐫𝐤𝐥𝐨𝐚𝐝𝐬 & 𝐂𝐨𝐧𝐭𝐫𝐨𝐥𝐥𝐞𝐫𝐬::
Learn Deployments, ReplicaSets, StatefulSets, DaemonSets, Jobs, and CronJobs.

𝐍𝐞𝐭𝐰𝐨𝐫𝐤𝐢𝐧𝐠 & 𝐒𝐞𝐫𝐯𝐢𝐜𝐞 𝐌𝐚𝐧𝐚𝐠𝐞𝐦𝐞𝐧𝐭::
Understand Services, ClusterIP, NodePort, LoadBalancer, Ingress, and Network Policies.

𝐒𝐭𝐨𝐫𝐚𝐠𝐞 & 𝐂𝐨𝐧𝐟𝐢𝐠𝐮𝐫𝐚𝐭𝐢𝐨𝐧::
Dive into Volumes, Persistent Volumes, Storage Classes, ConfigMaps, Secrets, Stateful Apps.

𝐒𝐞𝐜𝐮𝐫𝐢𝐭𝐲 & 𝐀𝐜𝐜𝐞𝐬𝐬 𝐂𝐨𝐧𝐭𝐫𝐨𝐥::
RBAC, Pod Security, Admission Controllers, TLS, API access, and Secrets Mgmt.

𝐃𝐞𝐯𝐎𝐩𝐬 & 𝐃𝐞𝐩𝐥𝐨𝐲𝐦𝐞𝐧𝐭::
kubectl, YAML, Helm, GitOps (ArgoCD/Flux), Monitoring, CI/CD, and cloud-managed K8s (EKS/GKE/AKS).
I recently attended capg interview and this is my experience-
Asked me to explain my day-to-day activities in the project, followed by a detailed discussion on my roles and responsibilities.

After that, I was asked to explain the entire CI/CD pipeline architecture for my project , including all the stages involved from source code to production deployment.

Then came scenario-based questions on CI/CD, such as:

	•	What steps I follow if a pipeline fails at any stage
	•	How I approach troubleshooting
	•	How I trace back the root cause of the issue

They also asked a few basic questions on Terraform.

Later, there were scenario-based Kubernetes questions, for example:

	•	If a pod goes into a CrashLoopBackOff state due to storage issues, how do I access the Kubernetes cluster and investigate why it’s failing?

Finally, I was asked how I verify whether the application is running fine after deployment — what checks I perform to ensure everything is working as expected.

One important thing: they thoroughly went through my resume and asked questions based on whatever I had mentioned there.
The interview was mainly focused on real-world, scenario-based questions, not just theoretical concepts.
</details>

<details>
<summary>How I Make Docker Containers Lightweight</summary>
<br>

When working with Docker, keeping containers lightweight is extremely important.
Lightweight containers are faster, more secure, and easier to manage, especially in cloud and production environments.

✅ Why lightweight containers matter:

Faster container startup times
Quicker image pulls and deployments
Lower storage and memory usage
Better performance and cost efficiency in the cloud

🛠️ Best practices I follow to keep Docker containers lightweight:

1️⃣ Use small base images
Instead of full OS images, I prefer minimal images like Alpine or slim variants.
2️⃣ Separate build and runtime stages
Using multi-stage builds ensures only required artifacts go into the final image.
3️⃣ Install only required packages
I avoid installing unnecessary tools that are not needed in production.
4️⃣ Clean up cache files
Removing package manager caches significantly reduces image size.
5️⃣ Minimize Docker layers
Combining commands helps keep the image smaller and cleaner.
6️⃣ Use a .dockerignore file
This prevents unnecessary files from being included in the Docker image.
7️⃣ Avoid running containers as root
Running containers as a non-root user improves security.

By following these best practices, Docker images become smaller, faster, and production-ready.

I’m actively applying these techniques while learning and building real-world Docker and DevOps projects.
</details>

🔹 Round 2: Docker & Kubernetes (Scenario-Based)


Key Takeaways
Everyone can design and deploy. what is your approach when everything breaks, how do you react when MTTR is spiking up, when users can't access your production application. learn from the ashes. 
✔ Product companies care more about thinking, troubleshooting, and ownership than just tools
✔ Interviewers expect clear explanations with real examples
✔ Knowing why you use a tool matters more than what tool you use
✔ Strong fundamentals + hands-on experience = confidence
If you’re preparing for DevOps roles in product-based companies, focus on: Linux + Networking + Cloud fundamentals + Kubernetes + CI/CD + real incident handling

🔹 𝐁𝐞𝐡𝐚𝐯𝐢𝐨𝐫𝐚𝐥 & 𝐋𝐞𝐚𝐝𝐞𝐫𝐬𝐡𝐢𝐩
- Handling difficult production situations
- Owning up to mistakes
- Helping teammates who lack clarity
- Managing multiple tasks simultaneously
- Handling outages as a lead
- Making changes that are future-proof
- Why SSL certificates are important
