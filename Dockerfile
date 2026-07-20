FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp

WORKDIR /myapp

COPY . /myapp

RUN chmod 755 pom.xml
RUN mvn clean install

CMD ["ls","-l", "/myapp"]