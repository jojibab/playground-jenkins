#!/usr/bin/bash
# The Docker image below has the latest Jenkins image and the Terraform, Vault, and Ansible versions are found in the Dockerfile in this directory.
docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 samgabrail/jenkins-tf-vault-ansible:latest

# If you would like to use newer versions of Terraform, Vault, and Ansible, then uncomment the 2 lines below and update the Dockerfile in this directory, this will take about 5 minutes to build the image.
# docker build -t jenkins_container ./.devcontainer
# docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins_container