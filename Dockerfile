FROM maven:3.9.16-eclipse-temurin-17 AS build

# Build the application using Maven

RUN mvn clean package -DskipTests
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]