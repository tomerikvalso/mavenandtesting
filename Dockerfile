FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp

COPY . /myapp

WORKDIR /myapp

RUN mvn clean install
RUN echo "did maven ok"

CMD["ls","-l","."]
# denne er feil
#ARG JAR_FILE=/myapp/target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]