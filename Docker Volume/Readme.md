Docker volumes are used to persist data and share data between containers
commands:
docker volume create <volume> - Create a new Docker volume.
docker volume ls  -         List all Docker volumes.
docker volume rm <volume> - Remove a specific volume.
docker run -v <volume>:/path <image> - Mount a volume in a container.
