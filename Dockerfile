FROM maven:3.9.16-eclipse-temurin-17

RUN mkdir myapp/
COPY . myapp
RUN cd myapp
RUN echo "pre pwd"
RUN pwd
RUN echo "post pwd"
RUN mvn clean install

