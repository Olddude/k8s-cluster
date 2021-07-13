#!/usr/bin/env bash

minikube delete

minikube start

eval $(minikube -p minikube docker-env)

