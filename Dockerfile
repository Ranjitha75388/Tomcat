FROM openjdk:8-jdk

RUN mkdir /app

COPY /home/logi/Downloads/old-files/ems-ops-phase-0/springboot-backend/target/springboot-backend-0.0.1-SNAPSHOT.jar /app

WORKDIR /app

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
