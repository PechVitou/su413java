# Use OpenJDK 21 slim image
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy your pre-built JAR (from build/libs/)
COPY build/libs/coffee-shop-telegram-bot-0.0.1-SNAPSHOT.jar app.jar

# Expose the port Render will route to
EXPOSE 8080

# Command to run your Spring Boot app, use PORT env variable
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]
