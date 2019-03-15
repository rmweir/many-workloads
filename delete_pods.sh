#!/usr/bin/env bash
  
ITERATIONS=$1
KUBE_CONFIG=$2
NAMESPACE=$3

for ((i=1;i<=$ITERATIONS;i++)); do
    echo "Delete abcdefghr$i"
    kubectl --kubeconfig $KUBE_CONFIG -n $NAMESPACE  delete deployment abcdefghr$i
done
