FROM java:8
EXPOSE 8090
RUN git clone https://github.com/sgajendran/dockerfile.git
RUN maven clean package
ADD /target/Test.jar Test.jar
