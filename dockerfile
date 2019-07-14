FROM maven:3-jdk-8

# Create app directory
WORKDIR /app

# Install app dependencies
# Copy everything from source to destination (destination is inside container)
COPY . .

# Build java application with maven
RUN mvn -B -DskipTests clean packagerun
 
