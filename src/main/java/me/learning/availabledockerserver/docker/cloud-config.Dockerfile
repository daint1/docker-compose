FROM openjdk:17.0.2-jdk
LABEL maintainer="daint"
VOLUME /tmp
EXPOSE 8888
ADD jar/config-server-0.0.1-SNAPSHOT.jar cloud-config-server.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/cloud-config-server.jar"]