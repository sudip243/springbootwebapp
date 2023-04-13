FROM openjdk:8-alpine
RUN apk update && apk add /bin/bash
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/E-Scooter-Rent.jar $PROJECT_HOME/E-Scooter-Rent.jar
WORKDIR $PROJECT_HOME
CMD ["java","-jar","/E-Scooter-Rent.jar"]
