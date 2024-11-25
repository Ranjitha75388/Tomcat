DOCKER COMMANDS


Images   

docker pull <image> - Download an image from a registry.
docker images        - List all downloaded images.
docker rmi <image> - Remove a specific image.
docker build -t <tag> .        - Build an image from a Dockerfile in the current directory.
 
Containers      

docker run <image> - Run a container from an image.
docker run -d <image> - Run a container in detached mode.
docker ps        - List all running containers.
docker ps -a -        List all containers, including stopped ones.
docker stop <container> - Stop a running container.
docker start <container> - Start a stopped container.
docker restart <container> - Restart a running container.
docker rm <container> - Remove a stopped container.
docker exec -it <container> <command> - Execute a command inside a running container.
docker logs <container> - View logs of a container.
docker inspect <container> - Get detailed information about a container.
 
Volumes

docker volume create <volume> - Create a new Docker volume.
docker volume ls  -         List all Docker volumes.
docker volume rm <volume> - Remove a specific volume.
docker run -v <volume>:/path <image> - Mount a volume in a container.
 
Networks

docker network create <network> - Create a custom network.
docker network ls        - List all Docker networks.
docker network rm <network> - Remove a custom network.
docker network connect <network> <container> - Connect a container to a specific network.
docker network disconnect <network> <container> - Disconnect a container from a specific network.

 
System Management
docker system df -        Show Docker disk usage.
docker system prune -        Remove unused Docker data (stopped containers, dangling images, etc.).
docker stats -        Display real-time stats of running containers.
docker info        - Display Docker system-wide information.
