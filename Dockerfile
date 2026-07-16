FROM eclipse-temurin:17-jdk-alpine
ENV HOME=/home/circleci/
WORKDIR $HOME
ADD . $HOME

ARG JAR_FILE=/home/circleci/project/target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]