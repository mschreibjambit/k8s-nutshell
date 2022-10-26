#!/bin/bash

cd $(dirname $0)

echo -e "########## Downloading tools ####################\n\n"
tools/download.sh

export PATH=$PATH:$(pwd)/tools

echo -e "\n\n########## Starting Kubernetes ##################\n\n"

01_setup_local-k8s/local-k8s.sh start

echo -e "\n\n########## Downloading Helloworld ##################\n\n"

docker pull k8snutshell.azurecr.io/helloworld:v0.1.0
docker tag k8snutshell.azurecr.io/helloworld:v0.1.0 k3d-registry.127.0.0.1.nip.io:5000/helloworld:v0.1.0
docker push k3d-registry.127.0.0.1.nip.io:5000/helloworld:v0.1.0

cd -