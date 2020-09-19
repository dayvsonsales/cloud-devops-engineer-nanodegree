#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=dayvsonsales/prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=dayvsonsales --email=dayvson@outlook.com
docker tag 672cf442e7ee dayvsonsales/prediction:first

# Step 3:
# Push image to a docker repository
docker push dayvsonsales/prediction
