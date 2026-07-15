FROM openjdk:18

WORKDIR /app
COPY . /app

RUN ./mvnw  -B -DskipTests clean package

EXPOSE 8080

CMD ["java", "-jar", "target/exchangeRates-0.0.1-SNAPSHOT.jar"]