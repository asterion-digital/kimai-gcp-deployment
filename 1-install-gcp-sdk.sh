#!/bin/bash
# Step 1 - Ensure GCP SDK is installed

# To automate our interactions with Google Cloud Platform we'll use the [[https://cloud.google.com/sdk/docs/install#deb][GCP SDK]] which provides us with a number of command line tools to interact with the platform, such as ~gcloud~, ~gsutil~ and ~kubectl~.

# Tangle the shell block below to a shell script by pressing *, b t* in emacs command mode:

# #+NAME: Install google cloud sdk

# Add the Cloud SDK distribution URI as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list

# Make sure apt-transport-https is installed
sudo apt-get install -y apt-transport-https ca-certificates gnupg

# Import the Google Cloud public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update and install the SDK
sudo apt-get update && sudo apt-get install -y google-cloud-sdk
