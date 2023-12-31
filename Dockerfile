# Use an official OpenJDK runtime as the base image
FROM openjdk:17

# Expose a port (if your application listens on a specific port)
EXPOSE 8888



# Set the working directory inside the container
ADD target/*.jar config-server.jar

# Copy the application JAR file into the container

# Define the command to run your Java application
ENTRYPOINT ["java", "-jar", "/config-server.jar"]