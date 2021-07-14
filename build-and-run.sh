#!/usr/bin/env bash

minikube delete

minikube start

eval $(minikube -p minikube docker-env)

docker build -t k8s-angular ./src/clients/k8s-angular

kubectl apply -f ./infra/k8s-angular/deployment.yml

kubectl apply -f ./infra/k8s-angular/service.yml

kubectl port-forward service/k8s-angular 8080:8080
