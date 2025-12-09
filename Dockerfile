# Use Temurin OpenJDK 21
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy your pre-built JAR
COPY build/libs/coffee-shop-telegram-bot-0.0.1-SNAPSHOT.jar app.jar

# Expose the port Render will route to
EXPOSE 8080

# Command to run your Spring Boot app
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]
