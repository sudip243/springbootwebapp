FROM openjdk:8-alpine
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
RUN groupadd -g 1000 springapp\ && useradd -d /opt/app -u 1000 -g 1000 -m -s /bin/bash
ENV PROJECT_HOME /opt/app
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar $PROJECT_HOME/spring-boot-web-0.0.1-SNAPSHOT.jar
WORKDIR $PROJECT_HOME
CMD ["java","-jar","/spring-boot-web-0.0.1-SNAPSHOT.jar"]
