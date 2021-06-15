#!/bin/bash
# Define where kubeconfig file will be stored
export KUBECONFIG=/home/$USER/.kube/config

# Retrieve credentials for the cluster
gcloud container clusters get-credentials kimai-gcp --region australia-southeast1

# Apply the application deployment yaml
kubectl apply -f 4-app-deployment.yaml
kubectl apply -f 4-db-deployment.yaml
kubectl apply -f 4-db-service.yaml
