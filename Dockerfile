FROM khipu/openjdk17-alpine:latest
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar /opt/app/spring-boot-web-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
CMD ["java", "-jar", "spring-boot-web-0.0.1-SNAPSHOT.jar"]
