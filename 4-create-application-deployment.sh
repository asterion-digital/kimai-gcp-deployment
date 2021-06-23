#!/bin/bash
# Define where kubeconfig file will be stored
export KUBECONFIG=/home/$USER/.kube/config

# Retrieve credentials for the cluster
gcloud container clusters get-credentials kimai-gcp --region australia-southeast1

# Apply the application deployment yaml
kubectl apply -f config/app-deployment.yaml
kubectl apply -f config/db-deployment.yaml
kubectl apply -f config/db-service.yaml
kubectl apply -f config/app-service.yaml
