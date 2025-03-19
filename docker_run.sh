#!/bin/bash
set -e

# Define Docker image name
DOCKER_IMAGE_NAME="microproject-chromadb-python"

# Ensure Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker image does not exist
if ! docker images | grep -q "$DOCKER_IMAGE_NAME"; then
    echo "ChromaDB image \"$DOCKER_IMAGE_NAME\" does not exist. Please build it first."
    exit 1
fi

# Run the ChromaDB container with port mapping and volume mount
docker run -it --rm \
    -p 8000:8000 \
    -v "$(pwd)/chroma:/data" \
    $DOCKER_IMAGE_NAME




