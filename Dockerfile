# Use the official ChromaDB image as the base
FROM chromadb/chroma:latest

# Set the working directory in the container
WORKDIR /app

# Copy the entire src directory into the container
COPY src/ .

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
# Add /root/.local/bin to PATH to be able to use uv
ENV PATH="/root/.local/bin:${PATH}"

# Install requirements using uv
# COPY src/requirements.txt .
RUN uv pip install --system -r ./requirements.txt

# Create a directory for the data
RUN mkdir /data

# Set the volume for persistent data storage
VOLUME /data

# Set the environment variable for ChromaDB to use the data directory
ENV CHROMA_DB_IMPL=duckdb+parquet
ENV PERSIST_DIRECTORY=/data

# Expose the default ChromaDB port
EXPOSE 8000

# Set the entry point to run the main.py script
ENTRYPOINT ["python", "main.py"]
