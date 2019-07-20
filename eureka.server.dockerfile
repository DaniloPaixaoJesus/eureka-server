FROM openjdk:8-alpine
RUN apk update && apk add bash
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY eurekaserver/target/eurekaserver-1.0-SNAPSHOT.jar $PROJECT_HOME/eurekaserver.jar
WORKDIR $PROJECT_HOME
CMD ["java", "-jar", "-Dspring.profiles.active=prod" ,"./eurekaserver.jar"]