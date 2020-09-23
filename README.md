# Udacity Cloud DevOps Nanodegree - Capstone Project
[GitHubRepository](http:www.ddd.com)

***
## Introduction
This is the final project to graduate from **Cloud DevOps Nanodegree**.

***
## Technology Requirements
* CloudFormation for resources deployment automation.
* Docker deploying app.
* Kubernetes (AWS EKS) automating deployment, scaling and management of containerized apps.
* Aqua Microscanner for security protection, monitoring and logging.
* Jenkins for continuous delivery and continuous integration (CD/CI).

***
## Environment Setup`
* Create a `Dockerfile`
* Create a `Jenkinsfile`
* Create CloudFormation Scripts
* Install Jenkins and all the necessary plugins in the EC2 Instance

***
## Running App
* Run Docker: `./run_docker.sh`
* Run Kubernetes: `./run_kubernetes.sh`

***
## Uploading to the Docker Hub
* Run `./upload_docker.sh`

***
## Deploying App to AWS
```
aws eks --region us-east-1 update-kubeconfig --name EKS-Name
kubectl apply -f aws/aws-auth-cm.yaml
kubectl apply -f deployment/deployment.yml
kubectl get nodes
```
***
## Cleaning APP
* `docker system prune`