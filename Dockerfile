FROM java:8
EXPOSE 8090
RUN git clone https://github.com/sgajendran/dockerfile.git
FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
RUN maven clean package
ADD /target/Test.jar Test.jar
