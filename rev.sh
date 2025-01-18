#!/bin/bash

# Get the deployment name as input (default to 'guestbook-deployment')
DEPLOYMENT_NAME=${1:-guestbook-deployment}

# Retrieve the revision history of the deployment
echo "Fetching revision history for deployment: $DEPLOYMENT_NAME"
kubectl rollout history deployment/$DEPLOYMENT_NAME

# Optional: Get details for a specific revision
if [ -n "$2" ]; then
  echo "Fetching details for revision $2..."
  kubectl rollout history deployment/$DEPLOYMENT_NAME --revision=$2
fi
