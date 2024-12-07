FROM openjdk:8-jdk

RUN mkdir /app

COPY build/libs/app.jar /app/app.jar  # Adjust this path if necessary

WORKDIR /app

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
