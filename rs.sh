#!/bin/bash

# Get the deployment name and the revision number as input
DEPLOYMENT_NAME=${1:-guestbook-deployment}
REVISION=${2}

# Check if the revision number is provided
if [ -z "$REVISION" ]; then
  echo "Please provide a revision number to rollback to."
  exit 1
fi

# Perform the rollback to the specified revision
echo "Rolling back deployment $DEPLOYMENT_NAME to revision $REVISION..."
kubectl rollout undo deployment/$DEPLOYMENT_NAME --to-revision=$REVISION

# Confirm the rollback has been successfully applied
echo "Rollback to revision $REVISION completed for deployment $DEPLOYMENT_NAME."
