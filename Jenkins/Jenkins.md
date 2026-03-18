<details><summary>Q1. What is Jenkins and where have you used it?</summary><br><b>

  Jenkins is an open-source CI/CD automation tool used to automate build, test, and deployment pipelines.
  - In my project, I used Jenkins to:
    - Pull code from Git
    - Build Docker images for frontend (React/Vite) and backend (FastAPI)
    - Push images to Nexus
    - Deploy to Kubernetes using kubectl apply
</b></details>
<details><summary>Q2. What is a Jenkins Pipeline?</summary><br><b>

  A Jenkins Pipeline is a scripted way to define CI/CD workflow as code using a Jenkinsfile.
  - It allows:
    - Version control of pipeline
    - Reusability
    - Automation of complex workflows
  - Example stages:
    ```bash  
    Checkout → Build → Test → Docker Build → Push → Deploy
    ```
</b></details>
<details><summary>Q3. Difference between Declarative vs Scripted Pipeline?</summary><br><b>

  Declarative Pipeline:
  - Simple, structured (recommended)
  - Uses pipeline {} syntax
  - Easier to maintain

Scripted Pipeline:
- Written in Groovy
- More flexible
- Used for complex logic
</b></details>
<details><summary>Q4. What is a Jenkinsfile?</summary><br><b>

  A Jenkinsfile is a file stored in Git that defines the pipeline.
  ```bash
pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t myapp .'
      }
    }
  }
}
```
</b></details>
<details><summary>Q5. What are Jenkins Agents?</summary><br><b>

  Agents are machines where Jenkins executes jobs.

  Types:
  - Static agents (manually configured)
  - Dynamic agents (Kubernetes, Docker)

In my setup:
- Jenkins master runs pipeline
- Kubernetes pods act as dynamic agents
</b></details>
<details><summary>Q6. How do you secure Jenkins?</summary><br><b>

  I follow multiple layers:
  - Enable authentication (LDAP / local users)
  - Role-Based Access Control (RBAC)
  - Use HTTPS
  - Store secrets in Jenkins Credentials (not in code)
  - Restrict plugin usage
  - Use agent isolation
</b></details>
<details><summary>Q7. How do you handle credentials in Jenkins?</summary><br><b>

  Using Jenkins Credentials Manager:
  - Store secrets (AWS keys, Docker creds)
  - Use in pipeline via:
    ```bash
    withCredentials([string(credentialsId: 'docker-pass', variable: 'PASS')]) {
    sh 'docker login -u user -p $PASS'
    }
    ```
</b></details>
<details><summary>Q8. How do you integrate Jenkins with Docker?</summary><br><b>

  Steps:
  - Install Docker in Jenkins server
  - Give Jenkins user Docker permission
Use pipeline:
```bash
docker build -t app .
docker push repo/app
```
I used it to build images and push to Nexus.
</b></details>
<details><summary>Q9. How Jenkins integrates with Kubernetes?</summary><br><b>

  Two ways:
  - Deploy to K8s
  - Use kubectl apply

Run Jenkins agents on K8s
- Jenkins Kubernetes plugin
- Pods created dynamically for builds
</b></details>
<details><summary>Q10. What is Blue-Green Deployment in Jenkins?</summary><br><b>

  It is a deployment strategy where:
  - Blue = current version
  - Green = new version  
Jenkins deploys new version → switches traffic → rollback possible
</b></details>
<details><summary>Q11. How do you optimize Jenkins pipelines?</summary><br><b>

  - Use parallel stages
  - Use caching (Docker layers, dependencies)
  - Use lightweight agents
  - Avoid unnecessary builds (webhooks instead of polling)
</b></details>
<details><summary>Q12. How do you trigger Jenkins jobs?</summary><br><b>

  - Git webhook (preferred)
  - Poll SCM
  - Manual trigger
  - Scheduled (cron)
</b></details>
<details><summary>Q13. What are common Jenkins plugins you used?</summary><br><b>

  - Git plugin
  - Docker plugin
  - Kubernetes plugin
  - Pipeline plugin
  - Credentials plugin
  - Nexus artifact uploader
</b></details>
<details><summary>Q14. How do you handle failure in Jenkins pipeline?</summary><br><b>

  - Use post { failure { ... } }
  - Send email/Slack alerts
  - Retry logic
  - Rollback deployment
</b></details>
<details><summary>Q15. How did you implement CI/CD for microservices?</summary><br><b>

  I had 5 backend microservices and 1 frontend:
  - Each service had its own Dockerfile
  - Jenkins pipeline:
  - Detect changed service
  - Build specific image
  - Push to Nexus
  - Update Kubernetes deployment
  - Used Nginx as reverse proxy inside backend container
</b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>

<details><summary></summary><br><b></b></details><details><summary></summary><br><b></b></details>
