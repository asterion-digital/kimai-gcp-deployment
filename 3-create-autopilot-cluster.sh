#!/bin/bash



# Once we have a project we can create a new cluster. To create a cluster we need to ensure compute engine apis are enabled.

# Tangle the shell block below to a shell script by pressing *, b t* in emacs command mode:


# Ensure compute engine apis are enabled in the project
gcloud services enable container.googleapis.com

# Create the new machine
gcloud container clusters create-auto kimai-gcp --region australia-southeast1
