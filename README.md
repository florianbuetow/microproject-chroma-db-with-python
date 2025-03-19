# Chroma DB Python Test Project

## About

This is a hands-on test project designed to explore and understand ChromaDB using Python. ChromaDB is an open-source embedding database that makes it easy to build AI applications with vector search capabilities.

Through this project, you can experiment with:

- Vector embeddings
- Similarity search
- Document storage and retrieval
- Basic ChromaDB operations and queries

## Prerequisites

- Docker
- Basic understanding of vector databases and embeddings

## Getting Started

1. Clone this repository

2. Build the Docker image:

   ```bash
   chmod +x docker_build.sh
   ./docker_build.sh
   ```

   This script will:

   - Check if Docker is installed
   - Remove any existing image with the same name
   - Build a new Docker image named "microproject-chromadb-python"

3. Run the application:
   ```bash
   chmod +x docker_run.sh
   ./docker_run.sh
   ```
   This script will:
   - Check if Docker is installed
   - Verify the image exists
   - Run the container with:
     - Port 8000 mapped to host
     - Local `./chroma` directory mounted to `/data` in container
     - Persistent storage for ChromaDB data

## Docker Configuration

The project uses a custom Docker image based on `chromadb/chroma:latest` with the following features:

- Uses `uv` package installer for faster Python package management
- Configures ChromaDB to use DuckDB with Parquet storage
- Persists data in a mounted volume
- Exposes port 8000 for ChromaDB operations
