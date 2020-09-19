#!/usr/bin/env bash
# create a kubenetes service or deployment via file
kubectl create -f $1

# show pods
kubectl get pods

# show services
kubectl get svc