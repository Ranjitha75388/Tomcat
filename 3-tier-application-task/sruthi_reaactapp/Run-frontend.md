### Run front-end in browser

[Download ems-ops-phase-0.zip](https://github.com/Ranjitha75388/Tomcat/blob/main/3-tier-application-task/ems-ops-phase-0.zip)

## Move the project from local to wsl
```bash
mv /mnt/c/Users/sreem/Downloads/ems-ops-phase-0.zip /home/sruthi/
```
## Unzip the project
```bash
unzip ems-ops-phase-0.zip
```
## Move to frontend directory
```bash
~/ems-ops-phase-0/react-hooks-frontend$
```
## Install npm to start the frontend
```bash
npm install
```
## Run the application
```bash
npm start
```
## Run the application in browser
> [http://localhost:3000](http://localhost:3000)

### Error
#### Err 1 : 
If any npm start occurs,
![image](https://github.com/user-attachments/assets/760c7c79-3f6f-4afa-aad3-64d641725890)

```bash
export NODE_OPTIONS=--openssl-legacy-provider
npm start
```


