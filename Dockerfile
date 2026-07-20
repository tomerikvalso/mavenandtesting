FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp

WORKDIR /myapp

RUN mvn clean install
COPY . /myapp

CMD ["ls","-l", "/myapp"]