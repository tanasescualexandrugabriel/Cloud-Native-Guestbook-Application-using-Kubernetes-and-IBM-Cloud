#!/bin/bash

# Set the Docker image tag for the new version
NEW_VERSION=v2

# Build the new Docker image
echo "Building the new Docker image for version $NEW_VERSION..."
docker build -t guestbook:$NEW_VERSION .

# Tag the new image for IBM Cloud Container Registry
echo "Tagging the new image for IBM Cloud..."
docker tag guestbook:$NEW_VERSION us.icr.io/YOUR_NAMESPACE/guestbook:$NEW_VERSION

# Push the new image to IBM Cloud Container Registry
echo "Pushing the new image to IBM Cloud Container Registry..."
docker push us.icr.io/YOUR_NAMESPACE/guestbook:$NEW_VERSION

# Deploy the new version to Kubernetes
echo "Deploying the new version of the Guestbook application..."
kubectl set image deployment/guestbook-deployment guestbook=us.icr.io/YOUR_NAMESPACE/guestbook:$NEW_VERSION

echo "Guestbook application updated successfully to version $NEW_VERSION!"
