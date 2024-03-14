FROM openjdk:21-ea-1-jdk-bullseye
WORKDIR /app
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]