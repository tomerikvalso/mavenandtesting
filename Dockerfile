FROM maven:3.9.16-eclipse-temurin-17 AS build

COPY pom.xml app
RUN mkdir /app/statics/
RUN mvn clean install

