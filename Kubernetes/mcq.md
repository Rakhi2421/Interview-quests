<details><summary>1. What is the primary purpose of Kubernetes?</summary><br><b>

  Manage and orchestrate containerized applications
</b></details>

<details><summary>2. Containers differ from virtual machines in that they:</summary><br><b>

   Share the host OS kernel
</b></details>
<details><summary>3. One of the main benefits of using Kubernetes in production is:</summary><br><b>

  Self-healing of failed containers
</b></details>
<details><summary>4. Docker is primarily used for:</summary><br><b>

  Creating and running containers
</b></details>
<details><summary>5. In Kubernetes architecture, the Control Plane includes:</summary><br><b>

  API Server, Scheduler, Controller Manager, etcd
</b></details>
<details><summary>6. Worker Nodes in Kubernetes run:</summary><br><b>

  kubelet, kube-proxy, and container runtime
</b></details>
<details><summary>7. A pod in Kubernetes is:</summary><br><b>

  A group of containers sharing network and storage
</b></details>
<details><summary>8. The Kubernetes cluster works by:</summary><br><b>

  Scheduling pods on nodes and monitoring cluster state
</b></details>
<details><summary>9. A deployment in Kubernetes is used to:</summary><br><b>

  Manage a set of identical pods and perform rolling updates
</b></details>
<details><summary>10. The role of the Kubernetes scheduler is to:</summary><br><b>

  Assign pods to nodes based on resource availability
</b></details>
<details><summary>11. A Kubernetes service ensures connectivity to pods by:</summary><br><b>

  Providing a stable IP and DNS name with load balancing
</b></details>
<details><summary>12. Labels in Kubernetes are:</summary><br><b>

  Key-value pairs attached to objects for grouping
</b></details>
<details><summary>13. ConfigMaps are used to:</summary><br><b>

  Store non-sensitive configuration data as key-value pairs
</b></details>
<details><summary>14. Secrets in Kubernetes:</summary><br><b>

  Store sensitive information like passwords encoded
</b></details>
<details><summary>15. A replica set ensures:</summary><br><b>

  A specified number of pod replicas are running
</b></details>
<details><summary>16. Namespaces in Kubernetes are used to:</summary><br><b>

  Isolate resources and manage multiple environments
</b></details>
<details><summary>17. Taints are used to:</summary><br><b>

  Repel pods from nodes unless they have tolerations
</b></details>
<details><summary>18. Persistent Volumes (PV) are:</summary><br><b>

  Physical storage resources managed by Kubernetes
</b></details>
<details><summary>19. Persistent Volume Claims (PVC):</summary><br><b>

   Request persistent storage by pods
</b></details>
<details><summary>20. Rolling updates in Kubernetes:</summary><br><b>

  Incrementally update pods without downtime
</b></details>
<details><summary>21. An Ingress in Kubernetes is used to:</summary><br><b>

  Expose internal pods to external traffic
</b></details>
<details><summary>22. Horizontal Pod Autoscaler (HPA) works by:</summary><br><b>

  Scaling pod replicas based on CPU/memory usage
</b></details>
<details><summary>23. StatefulSets differ from Deployments in that they:</summary><br><b>

  Ensure stable network identities and ordered deployment
</b></details>
<details><summary>24. Stateless applications:</summary><br><b>

  Do not store data between sessions and are easily scalable
</b></details>
<details><summary>25. Which component monitors the state of the cluster and ensures the desired state is maintained?</summary><br><b>

  Controller Manager
</b></details>
<details><summary>26. The component responsible for storing cluster state data in Kubernetes is:</summary><br><b>

  etcd
</b></details>
<details><summary>27. Tolerations in Kubernetes:</summary><br><b>

  Allow pods to be scheduled on nodes with matching taints
</b></details>
<details><summary>28. How does a Kubernetes Service load balance traffic?</summary><br><b>

  It assigns a stable IP/DNS and balances traffic across pods
</b></details>
<details><summary>29. What type of data is stored in ConfigMaps?</summary><br><b>

  Key-value pairs of non-sensitive configuration data
</b></details>
<details><summary>30. How is sensitive configuration data handled in Kubernetes?</summary><br><b>

  Stored in Secrets as encoded key-value pairs
</b></details>
<details><summary>31. Which Kubernetes object provides a declarative way to manage scaling and updating of applications?</summary><br><b>

  Deployment
</b></details>
<details><summary>32. A pod usually contains:</summary><br><b>

  Multiple containers sharing network and storage
</b></details>
<details><summary>33. What is the smallest deployable unit in Kubernetes?</summary><br><b>

  Pod
</b></details>
<details><summary>34. Which of the following best describes a Kubernetes Namespace?</summary><br><b>

  A virtual cluster within a Kubernetes cluster
</b></details>
<details><summary>35. What happens if a pod fails in Kubernetes?</summary><br><b>

  The system automatically restarts or reschedules it
</b></details>
<details><summary>36. Which component of the control plane schedules pods to nodes?</summary><br><b>

  Scheduler
</b></details>
<details><summary>37. What does etcd store in Kubernetes?</summary><br><b>

  Cluster configuration and state
</b></details>
<details><summary>38. What does a StatefulSet guarantee that a Deployment does not?</summary><br><b>

  Persistent identity and storage for each pod
</b></details>
<details><summary>39. How do taints and tolerations work together?</summary><br><b>

  Taints repel pods unless tolerations allow them
</b></details>
<details><summary>40. An Ingress Controller is responsible for:</summary><br><b>

  Allowing external HTTP(S) traffic into the cluster
</b></details>
<details><summary>41. What mechanism does Kubernetes use to provide persistent storage to pods?</summary><br><b>

  Persistent Volumes (PV) and Persistent Volume Claims (PVC)
</b></details>
<details><summary>42. What is a common use of labels in Kubernetes?</summary><br><b>

  Tagging resources to facilitate selection and grouping
</b></details>
<details><summary>43. Kubernetes Self-healing means:</summary><br><b>

   Automatically restarting failed containers
</b></details>
<details><summary>44. What is the role of the kube-proxy on a worker node?</summary><br><b>

  Managing network rules to allow communication to and from pods
</b></details>
<details><summary>45. What does a Deployment controller do when a pod update fails?</summary><br><b>

  Rolls back to the previous working version
</b></details>
<details><summary>46. What type of scaling adjusts the number of nodes in the cluster?</summary><br><b>

  Cluster Autoscaler
</b></details>
<details><summary>47. Which resource type is used for sensitive configuration data in Kubernetes?</summary><br><b>

  Secret
</b></details>
<details><summary>48. Which Kubernetes object ensures the desired number of pods are running?</summary><br><b>

  Replica Set
</b></details>
<details><summary>49. Which type of application would require StatefulSets rather than Deployments?</summary><br><b>

  Databases
</b></details>
<details><summary>50. Why is Kubernetes preferred over manually managing containers?</summary><br><b>

  It automates deployment, scaling, and management of containers
</b></details>
