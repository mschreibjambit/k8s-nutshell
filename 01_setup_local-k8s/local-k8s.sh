#!/bin/bash

get_workdir() {
    DIRPATH=$(dirname $0)
    cd $DIRPATH
    pwd
    cd - > /dev/null
}

export WORKDIR=$(get_workdir)

## Workaround to use another registry - remove this later
export K3D_IMAGE_LOADBALANCER=k8snutshell.azurecr.io/k3d-io/k3d-proxy:5.4.6
export K3D_IMAGE_TOOLS=k8snutshell.azurecr.io/k3d-io/k3d-tools:5.4.6
##

start() {
    if [ "$1" == "multi" ]; then
        k3d cluster create -c $WORKDIR/k3d-develop-config-multinode.yaml
    else
	    k3d cluster create -c $WORKDIR/k3d-develop-config.yaml
    fi
}

delete() {
    	k3d cluster delete develop
}

CMDS=(k3d kubectl k9s)
for c in ${CMDS[@]}; do
    if ! command -v $c &> /dev/null; then
        echo "${c} wird nicht gefunden"
        exit
    fi
done

case $1 in
    start)
        start $2
        ;;
    delete)
	delete
	;;
    stop)
	delete
	;;
    *)
        echo "$0 start | delete | stop"
        ;;
esac

