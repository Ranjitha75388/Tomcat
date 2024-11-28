
## Dockerize the file
### Docker file structure
ems-ops-phase-0/
├── react-hooks-frontend/
│   └── Dockerfile
├── springboot-backend/
│   └── Dokcerfile
└── docker-compose.yml
### react-hooks-frontend
Create a nano file inside /ems-ops-phase-0/react-hooks-frontend/ folder
    ```bash
    Sudo nano Dockerfile
    ```
  paste this : 
   ```bash
        FROM node:16 AS build

        WORKDIR /app

      # Copy local node_modules to avoid network dependency issues
        COPY package.json package-lock.json ./
       RUN npm config set timeout 600000 \
       && npm config set registry https://registry.npmmirror.com \
      && npm config set strict-ssl false

    COPY . .
    RUN npm install --offline || npm install --legacy-peer-deps --force

    RUN npm run build

    FROM nginx:alpine
    COPY --from=build /app/build /usr/share/nginx/html
   EXPOSE 80
  CMD ["nginx", "-g", "daemon off;"]
 ```
