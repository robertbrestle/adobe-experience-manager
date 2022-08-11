#!/bin/bash

# This script is for running the container in a WSL2 instance.
# Tested and verified with Debian 11

# login to Azure CLI
az login
# login to container registry
acrToken=$(az acr login --name MY_REGISTRY.azurecr.io --expose-token | jq '.accessToken' | xargs)
sudo docker login MY_REGISTRY.azurecr.io --username 00000000-0000-0000-0000-000000000000 --password $acrToken

# start Docker service
sudo service docker start

# pull the container
sudo docker pull MY_REGISTRY.azurecr.io/aem-6_5_13-publish:latest
sudo docker volume create aem-6_5_13-publish-volume

# start the container
sudo docker run -dp 4503:4503 -v aem-6_5_13-publish-volume:/etc/aem-6_5_13-publish-volume --name aem6513pub MY_REGISTRY.azurecr.io/aem-6_5_13-publish:latest
