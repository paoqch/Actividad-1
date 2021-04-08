FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ADD build/libs/user-login-server-1.0.5-SNAPSHOT.jar /user-login-server-1.0.5-SNAPSHOT.jar
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /user-login-server-1.0.5-SNAPSHOT.jar"]
