FROM maven:3.9.16-eclipse-temurin-17 AS build

# Build the application using Maven
RUN mkdir /app/src
EXPOSE 8080
