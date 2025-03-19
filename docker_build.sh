#!/bin/bash
set -e

# Define Docker image name
DOCKER_IMAGE_NAME="microproject-chromadb-python"

# Ensure Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker image already exists remove it first
if docker images | grep -q "$DOCKER_IMAGE_NAME"; then
    echo "ChromaDB image \"$DOCKER_IMAGE_NAME\" already exists. Removing it first..."
    docker rmi $DOCKER_IMAGE_NAME
fi
    

# Build the ChromaDB container image
echo "Building ChromaDB Docker image..."
docker build  --progress=plain -t $DOCKER_IMAGE_NAME .

# Check if the image was built successfully
if docker images | grep -q "$DOCKER_IMAGE_NAME"; then
    echo "ChromaDB image built successfully."
else
    echo "Failed to build ChromaDB image."
    exit 1
fi
