# Use a base image with Java pre-installed
FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/your-spring-boot-app.jar app.jar

# Expose the port the application runs on
EXPOSE 8082

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]
