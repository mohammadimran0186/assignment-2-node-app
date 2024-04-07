Launch EC2 Instance:

Launch an EC2 instance with the instance type t2.medium.
Make sure to open necessary ports for accessing the instance.

Install Minikube, kubectl, Git, and Docker:

Connect to your EC2 instance via SSH.

Install Minikube:

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube


Install kubectl:

sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl


Install Git:

sudo apt-get install -y git

Install Docker:

Install BUSYBOX Metrics Server:

Apply all Metrics server Kubernetes manifests


Clone Repository:

Clone the repository containing your source code

Write Dockerfile:

Write a Dockerfile for your Node.js application (main.js and package.json).

Build and Push Docker Image:

Build the Docker image:

Push the image to DockerHub:

Write Kubernetes Manifests:

Write deployment, HPA, and service YAML files.


Apply Kubernetes manifests:

kubectl apply -f deployment.yaml
kubectl apply -f hpa.yaml
kubectl apply -f service.yaml

Load Testing:

Simulate increased traffic using BusyBox load testing tool:

kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://nodejs-app; done"


Video and Picture References:

Google Drive Link to Video and screenshots - https://drive.google.com/drive/folders/1dcqVM7ht_Bg0l9cNE0h42XBCPtAp_WYt?usp=sharing
