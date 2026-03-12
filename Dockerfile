# Use java base image
FROM eclipse-temurin:21-jre

# Set working directory
WORKDIR /app

# Copy jar file (& Update jar name called app.jar)
COPY  target/helloworld-0.0.1-SNAPSHOT.jar app.jar

# Expose port
EXPOSE 8080

# Run Spring Boot Application
ENTRYPOINT ["java","-jar","app.jar"]