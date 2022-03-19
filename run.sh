
docker run --name centos7 -d pycontribs/centos:7 sleep 60000000000
docker run --name ubuntu -d pycontribs/ubuntu:latest sleep 60000000000

ansible-playbook -i inventory/test.yml site.yml