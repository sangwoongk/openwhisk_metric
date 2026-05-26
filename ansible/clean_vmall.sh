#!/bin/bash

sudo ansible-playbook -i environments/local couchdb.yml -e mode=clean
sudo ansible-playbook -i environments/local openwhisk.yml -e mode=clean
sudo ansible-playbook -i environments/local apigateway.yml -e mode=clean

./restart_vm.sh
