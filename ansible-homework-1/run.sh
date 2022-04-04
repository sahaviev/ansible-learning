#!/bin/bash

docker run --name centos7 -d pycontribs/centos:7 sleep 60000000000
docker run --name ubuntu -d pycontribs/ubuntu:latest sleep 60000000000
docker run --name fedora -d pycontribs/fedora:latest sleep 60000000000

ansible-playbook -i inventory/prod.yml site.yml --ask-vault-password

docker stop centos7 && docker rm centos7
docker stop ubuntu && docker rm ubuntu
docker stop fedora && docker rm fedora
