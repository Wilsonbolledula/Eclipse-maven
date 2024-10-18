FROM maven:3.8.4-openjdk-11 AS build
COPY target/wilson-0.0.1-SNAPSHOT-jar-with-dependencies.jar /usr/src/helloworld/
WORKDIR /usr/src/helloworld
CMD ["java", "-jar", "wilson-0.0.1-SNAPSHOT-jar-with-dependencies.jar"]