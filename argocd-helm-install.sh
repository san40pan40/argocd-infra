#/bin/bash
helm upgrade --create-namespace -i -n argocd argocd oci://registry-1.docker.io/bitnamicharts/argo-cd