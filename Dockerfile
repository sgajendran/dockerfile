FROM java:8
EXPOSE 8090
RUN git clone https://github.com/sgajendran/dockerfile.git
FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN  mvn package
ADD /target/Test.jar Test.jar
