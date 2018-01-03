FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
##COPY ${JAR_FILE} app.jar
ADD build/libs/spring-docker-sample-0.1.0.jar app.jar

#ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]