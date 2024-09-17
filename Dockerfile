# Use an official OpenJDK 8 image as the base image
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
COPY target/atm-1.0-SNAPSHOT.jar /app/atm-1.0-SNAPSHOT.jar

# Expose the application's port (replace with the port your app listens on)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/atm-1.0-SNAPSHOT.jar"]