#!/bin/bash
# Step 5 - Teardown cloud resources

# The Google Cloud Platform resources created by this process come at a cost, so it's important we have an easy way to teardown those resources as soon as we're finished with them!

# The script below will delete any projects containing ~kimai~ in the name along with any compute kubernetes clusters running in those projects.

# Tangle the shell block below to a shell script by pressing *, b t* in emacs command mode:


# Iterate over any matching projects
for project in $(gcloud projects list | awk '{ print $1 }' | grep kimai); do

  # Iterate over any instances in the project
  for instance in $(gcloud container clusters list --project $project --format="value(name)"); do

    # Delete the cluster
    gcloud container clusters delete --quiet $instance --zone australia-southeast1 --project $project

  done

  # Delete the project as well
  #gcloud projects delete $project --quiet

done
