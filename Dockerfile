FROM maven:3.9.16-eclipse-temurin-17 AS build

# Build the application using Maven

ENV HOME=/home/circleci2

RUN mkdir -p /home/circleci2

ADD /home/circleci $HOME

RUN mvn clean package -DskipTests

ARG JAR_FILE=/home/circleci2/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]