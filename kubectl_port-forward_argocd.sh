#!/bin/bash
export URL=http://127.0.0.1:8080/
echo "Argo CD URL: http://127.0.0.1:8080/"

echo "Username: \"admin\""
echo "Password: $(kubectl -n argocd get secret argocd-secret -o jsonpath="{.data.clearPassword}" | base64 -d)"

kubectl port-forward --namespace argocd svc/argocd-argo-cd-server 8080:80