FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp

WORKDIR /myapp

COPY . /myapp

RUN chmod 755 pom.xml
RUN mkdir /myapp/target

RUN mvn clean install


ARG JAR_FILE=/myapp/target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]