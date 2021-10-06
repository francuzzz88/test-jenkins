FROM openjdk:8
EXPOSE 8080
ADD target/testproject-0.0.1-SNAPSHOT.jar testproject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/testproject-0.0.1-SNAPSHOT.jar"]