FROM openjdk:17
RUN gradle build
ADD target/springboot-mysql-docker.jar springboot-mysql-docker.jar
ENTRYPOINT ["java","-jar","/springboot-mysql-docker.jar"]
