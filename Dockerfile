# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container

# Copy the built JAR file from target/ directory
COPY target/jwtsecurity-githubactions.jar jwtsecurity-githubactions.jar

# Expose the application port
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/jwtsecurity-githubactions.jar"]