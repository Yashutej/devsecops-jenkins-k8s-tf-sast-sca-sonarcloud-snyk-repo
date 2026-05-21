FROM maven:3.9-eclipse-temurin-21 AS builder
WORKDIR /usr/src/easybuggy

COPY . .
RUN mvn clean package

FROM eclipse-temurin:21-jre
COPY --from=builder /usr/src/easybuggy/target/easybuggy.jar /

CMD ["java","-jar","easybuggy.jar"]
