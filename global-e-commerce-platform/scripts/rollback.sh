#!/bin/bash
# Rollback script for the SkyShop application

echo "Starting rollback process..."

# Rollback Kubernetes deployments
echo "Rolling back Kubernetes deployments..."
kubectl rollout undo deployment/my-deployment

# Rollback infrastructure changes
echo "Rolling back infrastructure changes..."
terraform apply -auto-approve

# Additional rollback steps here

echo "Rollback completed successfully!"
