#!/bin/bash

set -e

IMAGE_NAME="adamsucks"
REGISTRY="registry.k8s.sindrema.com/images"
TAG="${1:-latest}"

echo "Building Docker image..."
docker build -t ${IMAGE_NAME}:${TAG} .

echo "Tagging image..."
docker tag ${IMAGE_NAME}:${TAG} ${REGISTRY}/${IMAGE_NAME}:${TAG}

echo "Pushing to registry..."
docker push ${REGISTRY}/${IMAGE_NAME}:${TAG}

echo "Done! Image pushed to ${REGISTRY}/${IMAGE_NAME}:${TAG}"
