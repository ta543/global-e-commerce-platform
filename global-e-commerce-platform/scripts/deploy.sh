#!/bin/bash
# Deployment script for the SkyShop application

echo "Starting deployment process..."

# Set up infrastructure
echo "Setting up infrastructure..."
terraform apply -auto-approve

# Deploy to Kubernetes
echo "Deploying to Kubernetes..."
kubectl apply -f k8s/

echo "Deployment completed successfully!"
