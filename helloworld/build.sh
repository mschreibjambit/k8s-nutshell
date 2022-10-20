#!/bin/bash

docker build -t k3d-registry.127.0.0.1.nip.io:5000/helloworld:v0.1.0 .

docker push k3d-registry.127.0.0.1.nip.io:5000/helloworld:v0.1.0
