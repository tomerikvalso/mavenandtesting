FROM maven:3.9.16-eclipse-temurin-17

#RUN mkdir /myapp

#WORKDIR /myapp

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

COPY /home/circleci/zap/wrk/zap.yaml  /home/circleci/zap/wrk/zap.yaml

ENTRYPOINT ["java","-jar","/app.jar"]