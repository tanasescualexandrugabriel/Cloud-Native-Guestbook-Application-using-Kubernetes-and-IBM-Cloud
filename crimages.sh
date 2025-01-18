#!/bin/bash

# Log in to IBM Cloud using the API key
echo "Logging into IBM Cloud..."
ibmcloud login --apikey YOUR_API_KEY

# Set the target region for the container registry
echo "Setting the target registry region..."
ibmcloud cr region-set global

# Build the Docker image using the Dockerfile
echo "Building Docker image..."
docker build -t guestbook:v1 .

# Tag the image for the IBM Cloud Container Registry
echo "Tagging the Docker image..."
docker tag guestbook:v1 us.icr.io/YOUR_NAMESPACE/guestbook:v1

# Push the Docker image to IBM Cloud Container Registry
echo "Pushing Docker image to IBM Cloud Container Registry..."
docker push us.icr.io/YOUR_NAMESPACE/guestbook:v1

echo "Image successfully pushed to IBM Cloud Container Registry."
