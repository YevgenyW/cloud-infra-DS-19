#!/bin/sh
# $1 - docker image name

kubectl run train-model-deployment --image=$1 --port=5000
kubectl expose deployment train-model-deployment --type=NodePort