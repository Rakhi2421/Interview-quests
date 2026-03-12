<details><summary>1. What is Docker?</summary><br><b>

  Docker is a containerization platform that packages applications and their dependencies into containers, ensuring the application runs consistently across different environments.
</b></details>
<details><summary>2. What is the difference between a container and a virtual machine?</summary><br><b>

  | Feature      | Container      | Virtual Machine |
| ------------ | -------------- | --------------- |
| OS           | Shares host OS | Has its own OS  |
| Startup time | Seconds        | Minutes         |
| Size         | Lightweight    | Heavy           |
| Isolation    | Process level  | Hardware level  |

</b></details>
<details><summary>3. What is a Docker Image?</summary><br><b>

  A Docker image is a read-only template used to create containers.
</b></details>
<details><summary>4. What is a Docker Container?</summary><br><b>
  
  A container is a running instance of an image.
</b></details>
<details><summary>5. Difference between Docker Image and Container</summary><br><b>

  | Image                     | Container           |
| ------------------------- | ------------------- |
| Blueprint                 | Running process     |
| Read-only                 | Writable            |
| Used to create containers | Created from images |

</b></details>
<details><summary>What is a Dockerfile?</summary><br><b>

  A Dockerfile is a script containing instructions to build a Docker image.
  ```bash
  dockerfile:
FROM node:20
WORKDIR /app
COPY . .
RUN npm install
CMD ["node","app.js"]
```
   
</b></details>
<details><summary>7. What is a Multi-Stage Dockerfile/ Build?</summary><br><b>

  A Dockerfile with multiple FROM instructions to separate build and runtime environments.
  Benefits:
  - Smaller images
  - Better security
  - Faster deployments
  - No unnecessary dependencies in runtime image

Example (similar to what you asked earlier):
```bash
FROM node:20 AS build
WORKDIR /app
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
```
</b></details>
<details><summary>8. What is Docker Registry?</summary><br><b>

  A Docker Registry stores Docker images.
  - Examples:
    - Docker Hub
    - Amazon Web Services ECR
    - Google GCR
</b></details>
<details><summary>9. What is Docker Volume?</summary><br><b>

  - A Docker volume is used to persist data outside containers.
  - Containers are ephemeral, meaning data disappears when container is removed.
  - Volumes store data outside container filesystem.
  ```bash
docker volume create mysql-data
```
Use case:
- Database storage
- Logs
- Shared data between containers
</b></details>
<details><summary>10. What is Docker Network?</summary><br><b>

  Docker networking enables containers to communicate.
  - Types:
    - Bridge: Default network for containers on single host.
      ```bash
      docker network create my-network
      ```
    - Host:  Container shares host network.
      ```bash
      --network host
      ```
    - Overlay: Used for multi-host communication in container clusters and in orchestration platforms.
    - None: Container has no networking.
</b></details>
<details><summary>11. Difference between CMD and ENTRYPOINT</summary><br><b>

  | CMD               | ENTRYPOINT       |
| ----------------- | ---------------- |
| Default command   | Fixed command    |
| Can be overridden | Hard to override |

</b></details>
<details><summary>12. Difference between ADD and COPY</summary><br><b>

  | COPY             | ADD                             |
| ---------------- | ------------------------------- |
| Simple file copy | Supports URL and tar extraction |
| Recommended      | Less predictable                |

</b></details>
<details><summary>13. What is Docker Layer Caching?</summary><br><b>

  Each Dockerfile instruction creates a layer.
  ```bash
dockerfile:
COPY package.json .
RUN npm install
COPY . .
```
This improves build speed because unchanged layers are reused.

</b></details>
<details><summary>14. How do you reduce Docker image size?/ How to Optimize Docker Images</summary><br><b>

  Best practices:
  - Use Alpine images or Light weight base images
    ```bash
    FROM node:20-alpine
    ```
  - Use multi-stage builds
    - Removes build tools from final image.
  - Remove unnecessary packages
  - Combine RUN commands
    ```bash
    RUN apt update && apt install -y curl
    ```
  - Use .dockerignore
    - Avoid sending unnecessary files.
      ```bash
      node_modules
      .git
       logs
      ```
    - Leverage Docker layer caching
      Copy dependency files first:
      ```bash
      COPY package.json .
      RUN npm install
      COPY . .
      ```
</b></details>
<details><summary>15. How does Docker integrate with CI/CD?</summary><br><b>

  ```bash
Developer pushes code
        ↓
CI (Jenkins)
        ↓
Docker build
        ↓
Push image to registry
        ↓
Deploy to Kubernetes
```
</b></details>
<details><summary>16. How do you handle secrets in Docker?</summary><br><b>

  Avoid hardcoding.
  - Use:
    - Docker secrets
    - Environment variables
    - Kubernetes secrets
</b></details>
<details><summary>17. What is the difference between Docker Compose and Docker?</summary><br><b>

  - Docker → run single container
  - Docker Compose → manage multi-container applications
</b></details>
<details><summary>18. What happens when you run docker run?</summary><br><b>

  Internally Docker performs:
  1. Pull image
  2. Create container
  3. Create network
  4. Allocate filesystem
  5. Start process
</b></details>
<details><summary>19. How do you debug a running container?</summary><br><b>

  ```bash
docker ps
docker logs container_id
docker exec -it container_id /bin/sh
```
</b></details>
<details><summary>20. How do you push Docker images to registry?</summary><br><b>

  ```bash
docker build -t username/app:v1 .
docker login
docker push username/app:v1
```
</b></details>
<details><summary>21. Difference Between Dockerfile vs Docker Compose</summary><br><b>

  A Dockerfile is used to build a Docker image.
  ```bash
FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install
CMD ["node","app.js"]
```
Purpose:
- Define application environment
- Build reusable images

Docker Compose is used to run multi-container applications.
```bash
version: "3"
services:
  app:
    build: .
    ports:
      - "3000:3000"

  db:
    image: mysql
```
Use cases:
- Running app + database
- Local development environments
- Microservice simulation
</b></details>
<details><summary>22. What is Difference Between Image vs Container?</summary><br><b>

  | Image                     | Container           |
| ------------------------- | ------------------- |
| Blueprint                 | Running instance    |
| Read-only                 | Writable            |
| Used to create containers | Created from images |

</b></details>
<details><summary>23. Docker Security Best Practices </summary><br><b>

  Important practices:
  - 1. Use minimal base images
    2. Run containers as non-root
    3. Scan images for vulnerabilities
    4. Avoid hardcoding secrets
</b></details>
<details><summary>24. How to Debug Container Failures</summary><br><b>

  Step-by-step approach:
  - Check container status
    ```bash
    docker ps -a
    ```
  - View logs
    ```bash
    docker logs container_id
    ```
  - Access container shell
    ```bash
    docker exec -it container_id /bin/sh
    ```
  - Inspect container
    ```bash
    docker inspect container_id
    ```
</b></details>


<details><summary>Docker Troubleshooting Scenarios</summary><br><b>

  - Container keeps restarting
    - Check logs:
      ```bash
      docker logs container_id
      ```
  - Port already in use
    - Error: port already allocated
    - Check: netstat -tulnp
  - Image pull failure
    - Check: docker login
  - Disk full
    - Check: docker system df
  - Clean
    - docker system prune
</b></details>
<details><summary>25. How to Debug Container Crashes</summary><br><b>

  Common reasons:
  - Application error
  - Missing dependencies
  - Wrong CMD
  - Port conflict
    
Debug steps:
- docker logs
- docker exec
- docker inspect
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
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>
<details><summary></summary><br><b></b></details>










