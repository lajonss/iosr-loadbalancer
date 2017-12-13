FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/iosr-loadbalancer-1.0-SNAPSHOT.jar /app.jar

EXPOSE 8765

ENV JAVA_OPTS="-Xmx512M"
CMD exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar