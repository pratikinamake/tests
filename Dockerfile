FROM openjdk:17-jdk-slim
MAINTAINER IML
WORKDIR /RcaServer
Copy target/rcaserver-0.0.1-SNAPSHOT.jar /RcaServer
RUN chmod -R 777 /RcaServer
RUN ls -ltr && java --version
WORKDIR /RcaServer
RUN pwd
RUN pwd && ls -ltr
EXPOSE 8082 8082
 ENTRYPOINT ["java", "-Dlog4j2.formatMsgNoLookups=true", "-jar", "rcaserver-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=qa"]

