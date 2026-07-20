FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp

ADD . /myapp/
CMD["ls","-l","/myapp"]
# denne er feil
#ARG JAR_FILE=/myapp/target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]