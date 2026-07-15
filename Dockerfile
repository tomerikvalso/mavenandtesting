FROM eclipse-temurin:21


WORKDIR /home/circleci/project
COPY . /home/circleci/project

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

RUN ./mvnw  -B -DskipTests clean package

