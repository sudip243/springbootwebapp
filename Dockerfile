FROM openjdk:8-alpine
RUN apk update && apk add /bin/bash
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/guava-19.0.jar $PROJECT_HOME/guava-19.0.jar
WORKDIR $PROJECT_HOME
CMD ["java","-jar","/E-Scooter-Rent.jar"]
