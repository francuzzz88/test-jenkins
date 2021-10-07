FROM maven:3.6.3-jdk-11 AS MAVEN_BUILD
COPY ./ ./
RUN mvn clean package
FROM openjdk:11.0.7-jdk-slim
COPY --from=MAVEN_BUILD /target/testproject-0.0.1-SNAPSHOT.jar /demo.jar
CMD ["java", "-jar", "/demo.jar"]