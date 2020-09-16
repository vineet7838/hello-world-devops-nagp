# Tomcat Alpine Version Image
FROM tomcat:alpine

MAINTAINER bhaveshkwatra

# copy the war from target directory to tomcat webapps directory 
COPY target/devopssampleapplication.war /usr/local/tomcat/webapps/bhaveshkwatra.war

# The application runs on Port 8080 in docker container
EXPOSE 8080

# when the docker container start up this will executed -> "catalina.sh run"
CMD /usr/local/tomcat/bin/catalina.sh run