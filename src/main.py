import chromadb
from chromadb.config import Settings

# For in-process persistent storage
client = chromadb.PersistentClient(
    Settings(
        persist_directory="/data"  # This matches our Docker volume mount path
    )
)