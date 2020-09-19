#!/usr/bin/env bash
# This file builds a docker image

# Step 1:
# Create dockerpath
dockerpath=dayvsonsales/fastfeet:$(grep \"version\" ./package.json | awk '{sub(/\",/, ""); print substr($2, 2)}')

# Step 2:
# Build and tag
echo "Docker ID and Image: $dockerpath"
docker build . --tag=$dockerpath

# Step 3:
# Push image to a docker repository
docker login --username=dayvsonsales --password-stdin < ~/password_docker.txt
docker push $dockerpath
