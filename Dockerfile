FROM openjdk:8-jdk-alpine

EXPOSE 8089

ARG JAR_FILE=target/java-app-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar

ENTRYPOINT exec java -jar /app.jar