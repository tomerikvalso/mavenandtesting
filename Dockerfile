FROM maven:3.8.4-openjdk-11-slim AS build
WORKDIR /home/circleci/project

COPY pom.xml .
COPY project ./project
# Build the application using Maven
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk-alpine
ENV HOME=/home/circleci/
WORKDIR $HOME
ADD . $HOME

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]