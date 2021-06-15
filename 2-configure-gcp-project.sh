#!/bin/bash



# Once we have authenticated we can create a project and then create a new kubernetes cluster within that project.

# Firstly let's create a new project, a project is the logical boundary all our cloud resources for this deployment will live within. To be able to deploy resources we also need to enable billing.

# Tangle the shell block below to a shell script by pressing *, b t* in emacs command mode:

# #+NAME: Create a new google cloud project

# Create a project id based on date
export gcp_project_id="kimai-gcp"

# Create new project using a random project id
gcloud projects create $gcp_project_id

# Ensure billing is enabled for the project
export gcp_billing_account=$(gcloud alpha billing accounts list --limit=1 --format='value(name.basename())')
gcloud alpha billing projects link $gcp_project_id --billing-account $gcp_billing_account

# Make sure the project is set active
gcloud config set project $gcp_project_id
