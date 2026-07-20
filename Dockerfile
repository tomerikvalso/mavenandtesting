FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir /myapp
COPY . /myapp

CMD ["ls","-l", "/myapp"]