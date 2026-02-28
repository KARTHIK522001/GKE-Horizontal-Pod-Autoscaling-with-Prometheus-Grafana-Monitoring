# GKE-Horizontal-Pod-Autoscaling-with-Prometheus-Grafana-Monitoring

GKE Horizontal Pod Autoscaling with Prometheus & Grafana Monitoring


This project demonstrates a real-time implementation of **Horizontal Pod Autoscaler (HPA)** in **Google Kubernetes Engine** where pods scale dynamically based on CPU utilization.

The application (Nginx Deployment) automatically scales when CPU usage increases (configured at 2% threshold for testing). Monitoring and visualization are implemented using **Prometheus** and **Grafana** via the kube-prometheus-stack Helm chart.

🚀 Key Highlights

* Created GKE Cluster on GCP
* Deployed Nginx with CPU resource requests & limits
* Configured HPA (min: 2 pods, max: 5 pods)
* Simulated CPU load using BusyBox
* Installed kube-prometheus-stack using Helm
* Visualized:

  * Pod CPU utilization
  * Scaling events
  * Namespace resource usage
* Observed real-time pod scale-up & scale-down behavior

📊 Monitoring Stack

* Prometheus – Metrics collection
* Grafana – Dashboard visualization
* Kubernetes Metrics Server – CPU metrics source
* Helm – Package manager for Kubernetes

🎯 Outcome

* Initially 2 pods running
* When CPU usage increased, HPA automatically scaled up pods
* When CPU dropped, pods scaled down
* Demonstrated cost-efficient and dynamic scaling in Kubernetes


Here is your improved and detailed version with **clear explanation of Metrics, why they are required, and how they work with HPA**, written in a professional GitHub README style (around 350–400 words):

---

## Horizontal Pod Autoscaling with Metrics in GKE 🚀

This project demonstrates how to configure **Horizontal Pod Autoscaler (HPA)** in **Google Kubernetes Engine** and explains the critical role of Kubernetes Metrics in autoscaling.

---

## ✅ Step 1: Deploy Nginx with Resource Limits

Apply the deployment:

```bash
kubectl apply -f nginx-deployment.yaml
```

Verify:

```bash
kubectl get pods
kubectl describe deployment nginx-deployment
```

The deployment defines CPU **requests (250m)** and **limits (500m)**.
These values are important because HPA calculates scaling decisions based on CPU usage relative to the requested CPU.

---

## ✅ Step 2: Expose Nginx Service

```bash
kubectl expose deployment nginx-deployment --type=LoadBalancer --port=80 --name=nginx-service
kubectl get svc
```

This allows external or internal traffic to reach the pods.

---

## ✅ Step 3: Understanding Metrics in Kubernetes 📊

### 🔎 What Are Metrics?

Metrics are numerical measurements that represent system performance over time.
In Kubernetes, common metrics include:

* CPU utilization
* Memory usage
* Network traffic
* Pod resource consumption

### 🎯 Why Metrics Are Required?

The **Horizontal Pod Autoscaler does NOT monitor CPU directly**.
Instead, it relies on metrics collected from the cluster.

Without metrics:

* HPA cannot calculate CPU usage
* Autoscaling will not work

### ⚙️ How Metrics Work in Kubernetes

1. Each pod exposes resource usage data.
2. The **Metrics Server** collects CPU and memory usage from Kubelets.
3. HPA queries the Metrics Server API.
4. If CPU usage exceeds the defined threshold, HPA increases replicas.
5. If usage drops, replicas decrease.

Install Metrics Server (if not present):

```bash
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl get apiservices | grep metrics
```

---

## ✅ Step 4: Create HPA

```bash
kubectl autoscale deployment nginx-deployment --cpu-percent=2 --min=2 --max=5
kubectl get hpa
```

This configures autoscaling:

* Minimum pods: 2
* Maximum pods: 5
* Target CPU utilization: 2% (low for demo purposes)

---

## ✅ Step 5: Simulate High CPU Load

Run load generator:

```bash
kubectl run -it --rm --image=busybox load-generator -- /bin/sh
```

Inside container:

```bash
while true; do wget -q -O- http://nginx-service; done
```

Monitor scaling:

```bash
kubectl get hpa
kubectl get pods -w
```

---

## 🎯 Final Result

* Initially 2 pods running
* Increased CPU → HPA scales up
* Reduced load → HPA scales down

This project demonstrates real-world Kubernetes autoscaling, the importance of metrics collection, and dynamic resource optimization in cloud-native environments.

