FROM openjdk:8-alpine
RUN apk update && apk add /bin/bash
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar $PROJECT_HOME/spring-boot-web-0.0.1-SNAPSHOT.jar
WORKDIR $PROJECT_HOME
CMD ["java","-jar","/E-Scooter-Rent.jar"]
