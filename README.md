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
