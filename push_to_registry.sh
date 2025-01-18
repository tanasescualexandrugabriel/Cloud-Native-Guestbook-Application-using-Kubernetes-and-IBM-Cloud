#!/bin/bash
# Log in to IBM Cloud CLI
ibmcloud login --apikey YOUR_API_KEY

# Target the container registry region
ibmcloud cr region-set global

# Build the Docker image
docker build -t guestbook:v1 .

# Tag the image for IBM Cloud Container Registry
docker tag guestbook:v1 us.icr.io/YOUR_NAMESPACE/guestbook:v1

# Push the image
docker push us.icr.io/YOUR_NAMESPACE/guestbook:v1
