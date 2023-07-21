FROM openjdk:17
RUN mvn package
ADD target/springboot-mysql-docker.jar springboot-mysql-docker.jar
ENTRYPOINT ["java","-jar","/springboot-mysql-docker.jar"]
