FROM maven:3-jdk-8

# Create app directory
WORKDIR /app

# Install app dependencies
# Copy everything from source to destination (destination is inside container)
COPY . .

# Build java application with maven
RUN mvn -B -DskipTests clean package
 
# Expose container port number 8084
# Application will run on this port number
EXPOSE 8084

# Entry point of container i.e. command which will start/run our application
CMD [ "java", "-jar target/my-app-1.0-SNAPSHOT.jar" ]
 
