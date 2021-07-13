#!/usr/bin/env bash

minikube delete

minikube start

eval $(minikube -p minikube docker-env)

docker build -t k8s-angular ./src/clients/k8s-angular
