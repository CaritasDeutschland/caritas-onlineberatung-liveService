FROM eclipse-temurin:11-jdk-jammy
VOLUME ["/tmp","/log"]
EXPOSE 8080
ARG JAR_FILE
COPY ./LiveService.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
