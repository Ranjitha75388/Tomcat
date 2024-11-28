
# 3-Tier Web Application
This is a 3-tier application for managing employee data, built with React for the frontend, Spring Boot for the backend, and MySQL for data storage.

## Project Setup


[Download zip file](https://github.com/Ranjitha75388/Tomcat/blob/main/3-tier-application-task/ems-ops-phase-0.zip) 

```
unzip ems-ops-phase-0.zip
```


## Installation
 #### Tools
    * Java 17 
    * Maven 3.8.8
    * NodeJs 14.x
    * MySQL 8.x


##### Install  Java 17

```bash
  sudo apt update
  sudo apt install openjdk-17-jdk openjdk-17-jre
  
```
Install  Maven

```bash 
  sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz
  tar -xvf apache-maven-3.8.8-bin.tar.gz
```
 * Maven M2_HOME Setup
      * Open the profile file `vim ~/.profile`  of the user and the following and save the file
      ```
          M2_HOME='/opt/apache-maven-3.8.8'
          PATH="$M2_HOME/bin:$PATH"
          export PATH
      ```
      * Verify the version of maven, it should be 3.8.8
      ```
          mvn -version    
      ```

  * NodeJs
    ```
        sudo apt update
        curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
        sudo apt -y install nodejs && npm
        node  -v && npm -v
    ```
        
  * MySQL
    * Install MySQL Server
    ```
        sudo apt update
        sudo apt install mysql-server
    ```
    * Update `root` user password
    ```
        sudo mysql
        ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
        exit
    ```
    * Configure User 
    ```
        sudo mysql -u root -p
        CREATE USER 'username'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
        GRANT ALL PRIVILEGES ON *.* TO 'username'@'%' WITH GRANT OPTION;
        FLUSH PRIVILEGES;
        exit
    ```
    * Create Database
    ```
        sudo mysql -u username -p
        CREATE DATABASE databasename;
    ```
    
