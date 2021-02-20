#/bin/bash

set -e

[ -z $1 ] && KIND_CLUSTER_NAME='kind' || KIND_CLUSTER_NAME=$1

kind create cluster --name $KIND_CLUSTER_NAME
skaffold config set -k "$KIND_CLUSTER_NAME" local-cluster true
skaffold dev
