#!/bin/bash

for user in user_viewer user_editor; do
  kubectl config set-credentials $user --client-certificate=rbac/users/${user}.crt --client-key=rbac/users/${user}.key
  kubectl config set-context ${user}-context --cluster=minikube --namespace=default --user=$user
done