# Dockerfile
# Use Tomcat as the base image
FROM tomcat:latest

# Set the working directory to /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file(s) from the context directory (workspace/Project4) to the Tomcat webapps directory
COPY /var/lib/jenkins/workspace/Project4/*.war .

# Expose port 8080 for Tomcat (default HTTP port)
EXPOSE 8080
