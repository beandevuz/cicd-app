FROM openjdk:11
VOLUME /tmp
EXPOSE 8989
ARG JAR_FILE=./target/cicd-app.jar
ADD ${JAR_FILE} cicd-app.jar
ENTRYPOINT ["java","-jar","/cicd-app.jar"]