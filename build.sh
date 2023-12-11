#!/bin/bash

# Set variables
ACR_NAME="kubcontner"
IMAGE_NAME="your-image-name"
IMAGE_TAG="your-image-tag"
DOCKERFILE_PATH="path/to/Dockerfile"

# Login to ACR
az acr login --name $ACR_NAME

# Build Docker image
docker build -t $IMAGE_NAME:$IMAGE_TAG -f $DOCKERFILE_PATH .

# Tag Docker image for ACR
docker tag $IMAGE_NAME:$IMAGE_TAG $ACR_NAME.azurecr.io/$IMAGE_NAME:$IMAGE_TAG

# Push Docker image to ACR
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$IMAGE_TAG
