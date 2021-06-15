#!/bin/bash
# Retrieve credentials for the cluster
gcloud container clusters get-credentials kimai-gcp --region australia-southeast1

# Apply the application deployment yaml
kubectl apply -f 4-application-deployment.yaml
