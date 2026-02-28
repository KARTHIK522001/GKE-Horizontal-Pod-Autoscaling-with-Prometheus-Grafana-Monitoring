# GKE-Horizontal-Pod-Autoscaling-with-Prometheus-Grafana-Monitoring

Here are **professional GitHub repository description options** you can use for your project 👇
(You can choose based on tone — Resume Ready / Detailed / Simple / Advanced)

---

## 🔹 Option 1 – Professional & Resume-Ready (Recommended)

**Title:**
GKE Horizontal Pod Autoscaling with Prometheus & Grafana Monitoring

**Description:**

This project demonstrates a real-time implementation of **Horizontal Pod Autoscaler (HPA)** in **Google Kubernetes Engine** where pods scale dynamically based on CPU utilization.

The application (Nginx Deployment) automatically scales when CPU usage increases (configured at 2% threshold for testing). Monitoring and visualization are implemented using **Prometheus** and **Grafana** via the kube-prometheus-stack Helm chart.

### 🚀 Key Highlights

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

### 📊 Monitoring Stack

* Prometheus – Metrics collection
* Grafana – Dashboard visualization
* Kubernetes Metrics Server – CPU metrics source
* Helm – Package manager for Kubernetes

### 🎯 Outcome

* Initially 2 pods running
* When CPU usage increased, HPA automatically scaled up pods
* When CPU dropped, pods scaled down
* Demonstrated cost-efficient and dynamic scaling in Kubernetes

---

## 🔹 Option 2 – Slightly Technical (For DevOps Portfolio)

**Description:**

Hands-on implementation of Kubernetes autoscaling in **Google Cloud Platform** using **Google Kubernetes Engine**.

Configured a Horizontal Pod Autoscaler (HPA) to scale Nginx pods dynamically based on CPU utilization. Implemented full monitoring and observability stack using Prometheus Operator via Helm and built-in Grafana dashboards.

### 🔧 Tech Stack

* Kubernetes (GKE)
* HPA (CPU-based autoscaling)
* Metrics Server
* Helm
* Prometheus Operator
* Grafana
* BusyBox (Load Testing)

### 📈 What This Project Demonstrates

* Kubernetes resource management
* Real-time autoscaling
* Observability implementation
* Infrastructure monitoring best practices
* Practical cloud-native architecture

---

## 🔹 Option 3 – Short & Clean (For Quick Viewers)

**Description:**

Implemented Horizontal Pod Autoscaler (HPA) in GKE to dynamically scale Nginx pods based on CPU utilization. Integrated Prometheus and Grafana (via kube-prometheus-stack) to monitor pod CPU usage and visualize scaling behavior in real-time.

---

## 🔹 Option 4 – Advanced & Impressive (Best for Senior-Level Portfolio)

**Description:**

Designed and implemented a cloud-native autoscaling architecture in **Google Kubernetes Engine** leveraging Kubernetes HPA for CPU-based scaling.

Deployed an Nginx workload with defined resource requests/limits and configured HPA to scale between 2–5 replicas based on CPU threshold.

Integrated full observability stack using:

* **Prometheus Operator**
* **Grafana Dashboards**
* Metrics Server
* Helm chart deployment

Simulated real traffic to trigger scaling events and analyzed:

* Pod CPU consumption
* Replica count changes
* Namespace-level resource usage
* Cluster compute metrics

This project demonstrates production-style autoscaling, monitoring, and Kubernetes operational visibility.

---
