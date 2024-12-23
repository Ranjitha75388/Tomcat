# Dockerization
This document provides step-by-step instructions to Dockerize the ReactJS frontend, Spring Boot backend, and MySQL database, and deploy the application using Docker Compose.

## Prerequisites
* Docker (Ensure Docker is installed and running)
* Docker Compose (Typically included with Docker Desktop or install separately)

1. React Frontend
* Navigate to the frontend folder
```bash
cd ems-ops-phase-0/react-hooks-frontend/
```
* Create a Dockerfile

```bash
sudo nano Dockerfile
```
* Add the following content:
dockerfile for frontend
```bash

# Use a lightweight Node.js image
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the entire application code
COPY . .

# Build the application
RUN npm run build

# Expose port 3000 for the frontend
EXPOSE 3000

# Serve the static files using 'serve'
CMD ["npx", "serve", "-s", "build", "-l", "3000"]
```
2.  Spring Boot Backend
* Navigate to the backend folder
```bash
cd ems-ops-phase-0/springboot-backend/
```
* Create a Dockerfile

``` bash
sudo nano Dockerfile
```
* Add the following content:
dockerfile for backend
```bash
# Use an OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the image
COPY target/springboot-backend-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 for the backend
EXPOSE 8080

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
```
3. Docker Compose Configuration
* Navigate to the root folder
```bash
cd ems-ops-phase-0/
```
* Create a docker-compose.yml file
```bash
sudo nano docker-compose.yml
```
* Add the following content
```bash
version: '3.8'
services:
  # React Frontend Service
  frontend:
    build:
      context: ./react-hooks-frontend
      dockerfile: Dockerfile
    ports:
      - "3000:3000"  # React app accessible on localhost:3000
    networks:
      - frontend_network
    depends_on:
      - backend

  # Spring Boot Backend Service
  backend:
    build:
      context: ./springboot-backend
      dockerfile: Dockerfile
    ports:
      - "8080:8080"  # Spring Boot app accessible on localhost:8080
    environment:
      SPRING_DATASOURCE_URL: jdbc:mysql://database:3306/ems
      SPRING_DATASOURCE_USERNAME: username
      SPRING_DATASOURCE_PASSWORD: password
    depends_on:
      - database
    networks:
      - frontend_network
      - backend_network

  # MySQL Database Service
  database:
    image: mysql:8
    environment:
      MYSQL_DATABASE: ems
      MYSQL_ROOT_PASSWORD: password
      MYSQL_USER: username
      MYSQL_PASSWORD: password
    volumes:
      - mysql-data:/var/lib/mysql  # Persistent volume for database data
    networks:
      - backend_network

# Network Configuration to Isolate Services
networks:
  frontend_network:
    driver: bridge  # Network connecting frontend and backend
  backend_network:
    driver: bridge  # Network connecting backend and database

# Persistent Volume for MySQL Database
volumes:
  mysql-data:
    driver: local
```

#### Build and Run
* Build the Docker images:
```bash
docker-compose build
``` 
![Screenshot (889)](https://github.com/user-attachments/assets/e4f75063-0e6b-47e0-8ed0-033cf797fa26)

* Run the application:
``` bash
docker-compose up -d
```

Check the status of services:
```bash
docker-compose ps
```

![image](https://github.com/user-attachments/assets/a91c0fd5-4f97-4bad-8b77-3a5a5bdb03d2)


### Run the dockerized application

http://localhost:3000/employee
![image](https://github.com/user-attachments/assets/189ee97c-6bb9-4608-a3b0-80920fcea8c0)

##### Error :

![Screenshot (883)](https://github.com/user-attachments/assets/2bf20358-bcf4-4187-803c-8449a90fe92a)
I encountered an issue where the container was in an exited state due to a port conflict. After identifying the container in the exited state and restarting it, the container worked fine.
![Screenshot (888)](https://github.com/user-attachments/assets/0e0c8866-b4fc-4677-8753-29ed5b1bc38f)


