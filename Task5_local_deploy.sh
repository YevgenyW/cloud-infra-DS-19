#!/bin/sh

eval $(minikube docker-env)
docker build -t $1 .
eval $(docker-machine env -u)
./Task3_deploy_train_model.sh $1