FROM openjdk:17-jdk-slim
WORKDIR /app
COPY src/main/java/HelloWorld.class .
CMD ["java", "HelloWorld"]
