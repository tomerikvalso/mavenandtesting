FROM eclipse-temurin:21


WORKDIR /app
COPY . /app

RUN ./mvnw  -B -DskipTests clean package

EXPOSE 8080

RUN ./mvnw  -B -DskipTests clean package

