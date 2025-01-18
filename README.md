# Cloud-Native-Guestbook-Application-using-Kubernetes-and-IBM-Cloud
# ☁️ Cloud-Native Guestbook Application using Kubernetes and IBM Cloud 🚀

Welcome to the **Guestbook Application** project! This project demonstrates how to build, containerize, and deploy a cloud-native, scalable web application using **Docker**, **Kubernetes**, and **IBM Cloud Container Registry**. 🌐

---

## 📝 Project Overview

The **Guestbook App** is a simple web-based application where users can leave messages. This project highlights essential cloud-native practices, including:
- Building and containerizing the application using **Docker** 🐳
- Deploying the application to a **Kubernetes** cluster 🚢
- Enabling horizontal scaling with **Kubernetes Horizontal Pod Autoscaler** ⚙️
- Managing revisions and rollbacks for deployments 🔄

---

## 📋 Project Features

1. **Docker Image Creation**: Build a Docker image for the Guestbook application.
2. **Cloud Integration**: Push the Docker image to IBM Cloud Container Registry.
3. **Kubernetes Deployment**: Deploy the Guestbook app in a Kubernetes environment.
4. **Autoscaling**: Configure a Horizontal Pod Autoscaler to handle increased traffic.
5. **Deployment Rollbacks**: Seamlessly manage deployment revisions and rollbacks.

---

## 🚀 Steps to Deploy the Guestbook Application

1. **Update the Dockerfile**: Create a Dockerfile and define the build steps.
2. **Build and Push the Docker Image**:
   - Build the Docker image locally.
   - Push it to IBM Cloud Container Registry.
3. **Deploy on Kubernetes**:
   - Create a Kubernetes Deployment and expose the app via a Service.
   - Enable horizontal autoscaling for the app.
4. **Update the Application**:
   - Roll out a new version of the application.
   - Manage deployment revisions and perform rollbacks if necessary.

---

## 📂 Project Structure

```plaintext
.
├── Dockerfile                # Dockerfile for building the app image
├── deployment_v1.yaml        # Kubernetes deployment configuration for version 1
├── deployment_v2.yaml        # Kubernetes deployment configuration for version 2
├── hpa.yaml                  # Horizontal Pod Autoscaler configuration
├── service.yaml              # Kubernetes Service configuration
├── update_guestbook.py       # Updated application code (v2)
└── README.md                 # Project documentation
