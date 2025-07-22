# 🧭 Cloud Deployment Project: Deploying a Web App Using Docker and Kubernetes on IBM Cloud

## 📌 Project Overview

This project demonstrates how to deploy a simple Node.js-based web application using **Docker containers** and **Kubernetes** on **IBM Cloud**. It includes setting up a container registry, creating a Docker image, pushing it to the cloud, deploying it via Kubernetes, and testing the application live.

---

## 🧰 Tools and Technologies

- [Docker](https://www.docker.com/)
- [Kubernetes](https://kubernetes.io/)
- [IBM Cloud Kubernetes Service](https://www.ibm.com/cloud/kubernetes-service)
- [Visual Studio Code](https://code.visualstudio.com/)
- Command-Line Interface (CLI)

---

## 🗂️ Project Structure
```bash
.
├── app/
│ ├── index.html
│ ├── style.css
│ └── script.js
├── Dockerfile
├── app-deploy.yaml
├── service.yaml
└── README.md
```

---

## 🚀 Deployment Steps

✅ 1. Create a Container Registry on IBM Cloud

ibmcloud cr namespace-add utilities-cloud-registry
ibmcloud cr namespace-list -v

✅ 2. Build Docker Image

docker buildx build --platform linux/amd64 -t todo-app .

✅ 3. Tag Docker Image

docker tag todo-app:latest us.icr.io/utilities-cloud-registry/todo-app

✅ 4. Authenticate Docker with IBM Cloud

ibmcloud cr login --client docker

✅ 5. Push Image to Container Registry

docker push us.icr.io/utilities-cloud-registry/todo-app

✅ 6. Kubernetes Deployment

a. Deploy App with Kubernetes

kubectl apply -f app-deploy.yaml

b. Create Kubernetes Service

kubectl apply -f service.yaml

✅ 7. Get Public IP & Port

a. Get Public IP of Worker Node

ibmcloud ks worker ls --cluster mycluster-free

b. Get NodePort of Kubernetes Service

kubectl describe service todo-app

✅ 8. Access the App in Browser

Format:

http://<PUBLIC_IP>:<NODE_PORT>

Replace <PUBLIC_IP> and <NODE_PORT> with the actual values retrieved in step 7.
✅ Outcome

A live-running Node.js web app deployed via Kubernetes, accessible globally from the browser using the public IP and port. This setup enables containerized application delivery in a scalable, cloud-native manner.

---
## 🎓 Related Learning Resources

- 🔗 [IBM Cloud Security Analyst Simulation (MDL-305)](https://skills.yourlearning.ibm.com/activity/MDL-305?planId=PLAN-2EC3A305F2C3&sectionId=SECTION-B&planIdFromParentTab=PLAN-2EC3A305F2C3&sectionIdFromParentTab=SECTION-B&planIdForChildTab=PLAN-2EC3A305F2C3)

- 🔗 [IBM Cloud Security Fundamentals Path (PLAN-2EC3A305F2C3)](https://skills.yourlearning.ibm.com/activity/PLAN-2EC3A305F2C3?focuslmsId=MDL-306)
