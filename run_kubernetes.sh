#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=zaomai/proj4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 --image=$dockerpath proj4

# Step 3:
# List kubernetes pods
kubectl get po

# Step 4:
# Forward the container port to a host
kubectl port-forward proj4 8000:80
