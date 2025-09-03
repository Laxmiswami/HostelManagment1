# Step 1: Use Tomcat as base image
FROM tomcat:10.0-jdk11-openjdk

# Step 2: Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: Copy WAR file into Tomcat
COPY target/HostelManagementSystem.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose Tomcat port
EXPOSE 8080

# Step 5: Start Tomcat
CMD ["catalina.sh", "run"]

