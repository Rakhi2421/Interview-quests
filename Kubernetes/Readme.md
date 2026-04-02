<details><summary>Que 1: What is Kubernetes, and why is it needed in modern infrastructure?</summary><br><b>

 Kubernetes is an open-source tool used to manage containerized application. It automates tasks like deploying, scaling, and restarting containers. In modern infrastructure where application runs in containers like Docker, Kubernetes is needed to handle large number of containers efficiently. It ensures high availability, better resource usage and smooth updates making it ideal for cloud environments.
</b></details>
<details><summary>Que 2: What are containers, and how do they differ from virtual machines?</summary><br><b>

 Containers are lightweight portable units that package an application along with everything it needs to run like code libraries and dependencies. They run on a shared OS kernel making them faster and more efficient than virtual machines. Virtual machines on the other hand include an entire operating system and virtual hardware which makes them heavier and slower to start. In short, containers share the host OS and are lightweight. Virtual machines run separate OS instances and are heavier. Containers are preferred in modern DevOps for the faster deployment, testing and development.
</b></details>
<details><summary>Que 3: What are the benefits of using Kubernetes in a production environment?</summary><br><b>

 In production, Kubernetes is very useful because first it keeps application highly available by restarting failed containers. Second, it auto-scales based on the traffic. Third, it handles zero downtime updates using rolling deployment. Fourth, it self-heals by replacing unhealthy containers. And fifth, it manage resources efficiently reducing the cloud cost.
</b></details>
<details><summary>Que 4: What is the difference between Docker and Kubernetes?</summary><br><b>

 Docker is a tool used to create and run containers which package application with their dependencies. Kubernetes on the other hand is used to orchestrate and manage many containers across multiple machines. In simple terms, Docker creates and runs container and Kubernetes manages and scale those containers in production. They often work together. Docker builds the container and Kubernetes deploys and manages them.
</b></details>
<details><summary>Que 5: What are the main components of the Kubernetes architecture?</summary><br><b>

 Kubernetes has two main parts. Control plane and worker nodes. Control plane manages the cluster and it includes API server scheduler controller manager etc. Worker node run the actual application. It includes Kubelet, Kube proxy and a container runtime. Together they keep application running healthy and scalable.
</b></details>
<details><summary>Que 6: Explain the concept of a pod in Kubernetes.</summary><br><b>

 A pod is the smallest unit in Kubernetes. It’s like a wrapper around one or more containers that need to work together closely. All containers inside a pod share the same network name spaces that is IP and ports. It can also communicate easily through local host and can also share storage volumes.
</b></details>
<details><summary>Que 7: What is a Kubernetes cluster, and how does it work?</summary><br><b>

 A Kubernetes cluster is a group of machines that work together to run containerized applications. It has two main parts. Control plane and worker node. Control plane is the brain. It makes decisions like scheduling apps, monitoring health and handling updates. Worker node on the other hand run the actual application inside ports. The control plane tells the worker nodes what to do and the nodes report back with the status. Together they keep the application running scaled and healthy.
</b></details>
<details><summary>Que 8: What is a deployment in Kubernetes, and how does it help in managing applications?</summary><br><b>

 A deployment in Kubernetes is a controller that helps you manage your application’s life cycle. It allows you to define the desired state of your application like how many pods to run. It also allows us to perform rolling updates without any downtime as Q1 is updates part one by one. It also allows to roll back to the previous version if something goes wrong. In short, a deployment makes it easy to update, scale, and maintain our application reliably.
</b></details>
<details><summary>Que 9: What is the role of the Kubernetes scheduler?</summary><br><b>

 The Kubernetes Scheduler is responsible for assigning newly created parts to the best fit worker nodes. It checks resources requirement like CPU and memory. It also checks the node availability and it also checks taints tolerance and affinity rules. Based on these it picks the most suitable node and schedules the part there. This ensures efficient use of cluster resource and app performance.
</b></details>
<details><summary>Que 10: What is a Kubernetes service, and how does it ensure connectivity to pods?</summary><br><b>

 A Kubernetes service is a stable way to connect to pods even if the pods IP keeps changing. It acts as an abstraction layer that provides a fixed IP and DNS name, automatically routes traffic to the right pods using labels and it also ensures load balancing across healthy pods. This way applications can reliably talk to each other without worrying about pod restarts or IP changes.
</b></details>
<details><summary>Que 11: What are labels and selectors in Kubernetes, and how do they help in managing resources?</summary><br><b>

 Labels in Kubernetes are key value pairs attached to objects like pods and deployments. They help organize, group, and filter resources. Selectors are used to query or match these labels. For example, a service uses a selector to route traffic only to ports with a specific label. Together, labels and selectors make it easy to manage and target specific set of resources in a large cluster.
</b></details>
<details><summary>Que 12: What are ConfigMaps and Secrets in Kubernetes, and how are they used to manage configurations?</summary><br><b>

 Config maps and secrets are used in Kubernetes to manage configuration data separately from a application code. Config maps store non-sensitive data like application settings, URLs or environment variables. Secrets store sensitive data like password, token or key in a base 64 encoded form for security. Both can be injected into pods as environment variables or mounted as files. It helps keep applications flexible, secure, and easy to update without rebuilding images.
</b></details>
<details><summary>Que 13: What is a replica set in Kubernetes, and how does it ensure the desired number of pod replicas?</summary><br><b>

 A replica set in Kubernetes ensures that a specific number of pod replicas are always running. If a pod crashes or gets deleted, the replica set will automatically create a new one to maintain the desired count. This ensures high availability and reliability of the application. While you can use a replica set directly, it’s usually managed by a deployment which adds version control and rolling update on top.
</b></details>
<details><summary>Que 14: Explain the concept of namespaces in Kubernetes.</summary><br><b>

 Namespaces in Kubernetes are like virtual clusters within a physical cluster. They help isolate resources like pods, services and configs. So teams or project projects can work independently. For example, you can run dev test and production environment in the same cluster using separate name spaces. This keeps things organized, secure, and easy to manage. They are especially useful in large teams or multi-tenant setups.
</b></details>
<details><summary>Que 15: What are taints and tolerations in Kubernetes, and how do they work?</summary><br><b>

 Taints in Kubernetes are used to mark nodes so that only certain parts can run on them. A tainted node says don’t schedule any parts here unless they tolerate this taint. Tolerations are added to pods to let them bypass the taint and run on those nodes. This is useful for keeping dedicated nodes for special workloads like GPU tasks or high security apps.
</b></details>
<details><summary>Que 16: How does Kubernetes handle persistent storage for containers?</summary><br><b>

 Kubernetes uses persistent volumes and persistent volume claims to manage storage for stateful applications. A persistent volume is a piece of storage in a cluster provisioned by an admin or dynamically. A persistent volume claim is a request by a pod for storage specifying size and access mode. Pods use PVCs to get stable long-term storage. Even if the pod is deleted or rescheduled, the data remains safe. This setup makes it easy to manage storage independently of the pod’s life cycle.
</b></details>
<details><summary>Que 17: How does Kubernetes handle rolling updates and rollbacks?</summary><br><b>

 Kubernetes handle rolling updates through the deployment object, updating pods gradually to avoid downtime. It replaces old pod with the new ones one at a time while keeping the app still running. If something goes wrong, you can quickly roll back to a previous table version using a single command. This ensures zero downtime, control roll out and save recovery during application updates.
</b></details>
<details><summary>Que 18: What is the role of an Ingress in Kubernetes?</summary><br><b>

 Ingress in Kubernetes is used to expose services outside the cluster using HTTP or HTTPS. It acts like a smart router that number one routes incoming traffic to write service based on URL paths or host name. Number two, supports SSL termination. Number three, offer load balancing for better traffic management. With ingress, you can manage access to multiple services through a single external IP, making it diff ideal for web apps and APIs.
</b></details>
<details><summary>Que 19: What is the significance of auto-scaling in Kubernetes, and how does it work?</summary><br><b>

 Autoscaling in Kubernetes helps application handle changing loads by automatically adjusting the number of pods. The most common is horizontal pod auto-scaler which scales pod up and down based on CPU memory usage or custom metrics. This ensures number one better performance during high traffic. Number two, cost saving during load usage. And number three, no manual scaling needed. Kubernetes constantly monitors metrics and adjust pod count to match the demand in real time.
</b></details>
<details><summary>Que 20: What is the difference between stateful and stateless applications in Kubernetes, and how are StatefulSets and Deployments used to manage them?</summary><br><b>

 In Kubernetes, stateless application don’t store data between sessions. Every pod is identical and replaceable. These are managed using deployments which handle scaling and rolling updates easily. Stateful application need to retain data and have stable identities like databases. These are managed using stateful sets which ensures number one persistent storage with stable volume, number two consistent quad names and order and number three predictable network identities. So use deployments for stateless application like web servers and stateful set for stateful application like MySQL, Kafka or Radius.
</b></details>
