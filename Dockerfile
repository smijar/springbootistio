FROM jeanblanchard/java:jre-8
RUN apk add --update bash && rm -rf /var/cache/apk/*
# FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
