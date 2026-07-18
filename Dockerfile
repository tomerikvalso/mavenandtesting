FROM maven:3.9.16-openjdk-17-slim AS build
WORKDIR /home/circleci

# Build the application using Maven

ENV HOME=/home/circleci
WORKDIR $HOME
ADD . $HOME

COPY $HOME .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk-alpine
ARG JAR_FILE=/home/circleci/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]