FROM 3.9.16-jdk17-debian13-dev
WORKDIR /home/circleci

# Build the application using Maven

ENV HOME=/home/circleci
WORKDIR $HOME
ADD . $HOME

COPY $HOME .
RUN mvn clean package -DskipTests

ARG JAR_FILE=/home/circleci/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]