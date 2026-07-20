FROM maven:3.9.16-eclipse-temurin-17 AS build

RUN mkdir statics/
COPY pom.xml statics
RUN mvn clean install

