#!/bin/bash
kubectl apply -f nginx-deployment.yaml -n monitor
kubectl get pods -n monitor
kubectl describe deployment nginx-deployment -n monitor
kubectl expose deployment nginx-deployment --type=LoadBalancer --port=80 --name=nginx-service -n monitor
kubectl get svc -n monitor
kubectl autoscale deployment nginx-deployment --cpu-percent=2 --min=2 --max=5 -n monitor
kubectl get hpa -n monitor
