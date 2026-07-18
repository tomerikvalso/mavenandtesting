FROM maven:3.9.16-eclipse-temurin-17 AS build
WORKDIR /home/circleci

# Build the application using Maven


ENV HOME=/home/circleci
WORKDIR $HOME

RUN mkdir -p /home/circleci

ADD /home/circleci $HOME

RUN mvn clean package -DskipTests

ARG JAR_FILE=/home/circleci/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]