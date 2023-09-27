FROM openjdk:17.0.2-jdk
LABEL maintainer="daint"
VOLUME /tmp
EXPOSE 8761
ADD jar/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka-server.jar"]