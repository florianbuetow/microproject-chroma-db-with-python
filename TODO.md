# Next steps

Follow the guide on [Getting Started with ChromaDB](https://docs.trychroma.com/docs/overview/getting-started)

## Debug the instantiatino of the python chromadb client

```bash
What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview
ChromaDB image built successfully.
Traceback (most recent call last):
  File "/app/main.py", line 5, in <module>
    client = chromadb.PersistentClient(
             ^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/chromadb/__init__.py", line 152, in PersistentClient
    return ClientCreator(tenant=tenant, database=database, settings=settings)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/chromadb/api/client.py", line 58, in __init__
    super().__init__(settings=settings)
  File "/usr/local/lib/python3.11/site-packages/chromadb/api/shared_system_client.py", line 19, in __init__
    SharedSystemClient._create_system_if_not_exists(self._identifier, settings)
  File "/usr/local/lib/python3.11/site-packages/chromadb/api/shared_system_client.py", line 25, in _create_system_if_not_exists
    if identifier not in cls._identifier_to_system:
       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
```
