##  Daemonize the services
### 1. Java Backend
* Move out of the project file
  ![image](https://github.com/user-attachments/assets/588ef971-ffe2-4909-823c-f2cec297c1aa)
  * create a /opt/java-backend folder
    ![image](https://github.com/user-attachments/assets/f97dbb6e-902c-4449-b71c-c80e5fc61195)
    ![image](https://github.com/user-attachments/assets/4d29dfee-6311-4b57-9e47-0a611b87f38a)
  * Copy the backend *.jar file to this folder
  * Move to backend folder, run this commands
    ```bash
    mvn clean install
    ```
    ![image](https://github.com/user-attachments/assets/a2a9cd3d-8b23-435d-a4a5-698167105048)
     ```bash
     sudo cp -r /home/sruthi/ems-ops-phase-0/springboot-backend/target/springboot-backend-0.0.1-SNAPSHOT.jar /home/sruthi/opt/java-backend/
     ```

