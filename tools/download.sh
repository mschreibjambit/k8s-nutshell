#!/bin/bash

OS=$(uname -s)
OS_LOWER=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)
ARCH_AMD=${ARCH//x86_64/"amd64"}


download_kubectl() {
    VERSION="v1.25.3"

    curl -LO https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/${OS_LOWER}/${ARCH_AMD}/kubectl

    if [ "$OS" == "darwin" ]; then
        xattr -c kubectl
    fi

    chmod +x ./kubectl
}

download_k3d() {
    VERSION="v5.4.6"
    curl -o k3d -L https://github.com/k3d-io/k3d/releases/download/${VERSION}/k3d-${OS_LOWER}-${ARCH_AMD}

    if [ "$OS" == "darwin" ]; then
        xattr -c k3d
    fi

    chmod +x ./k3d
}

download_k9s() {
    VERSION="v0.26.6"
    curl -L https://github.com/derailed/k9s/releases/download/${VERSION}/k9s_${OS}_${ARCH}.tar.gz | tar xz -C ./ k9s

    if [ "$OS" == "darwin" ]; then
        xattr -c k9s
    fi

    chmod +x ./k9s

}

if [ ! -f k3d ];then
    download_k3d
fi
if [ ! -f kubectl ]; then
    download_kubectl
fi
if [ ! -f k9s ]; then
    download_k9s
fi