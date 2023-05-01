#!/bin/bash
minikube start --kubernetes-version=v1.22.10 -p alfa
minikube profile alfa
helm upgrade --create-namespace -i -n argocd argocd oci://registry-1.docker.io/bitnamicharts/argo-cd