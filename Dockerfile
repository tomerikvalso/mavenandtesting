FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp

COPY . /myapp

WORKDIR /myapp

RUN mvn clean install

CMD ["ls","-l", "/myapp"]