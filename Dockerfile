FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp

COPY . /myapp

WORKDIR /myapp

RUN mvn clean install
RUN echo "did maven ok"

CMD ["ls","-l", "/myapp"]