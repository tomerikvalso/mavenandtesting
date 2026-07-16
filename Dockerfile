FROM eclipse-temurin:21-jdk-alpine
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
# RUN --mount=type=cache,target=/root/.m2 ./mvnw -f $HOME/pom.xml clean package
RUN ./mvnw -f $HOME/pom.xml clean package

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]