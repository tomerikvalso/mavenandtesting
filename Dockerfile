FROM eclipse-temurin:17-jdk-alpine
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]