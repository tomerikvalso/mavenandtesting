FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp

COPY . /myapp

RUN cd /myapp

RUN mvn clean install

CMD ["ls","-l", "/myapp"]