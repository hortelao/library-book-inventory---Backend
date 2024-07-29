# Use an official OpenJDK runtime as a parent image
FROM openjdk:21

# Add a volume pointing to /tmp
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=target/book-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} book.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/book.jar"]
