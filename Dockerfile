#FROM registry.access.redhat.com/jboss-webserver-3/webserver31-tomcat7-openshift
FROM tomcat7-base:latest
    
USER root
  
#ARG TOMCAT_PATH=/opt/webserver
ARG TOMCAT_PATH=/usr/local/tomcat/apache-tomcat-7.0.62
  
# App 복사
#COPY files/webapps/simple ${TOMCAT_PATH}/webapps/
ADD files/webapps/simple ${TOMCAT_PATH}/webapps/simple
   
# Lib
#COPY files/lib/*.jar ${TOMCAT_PATH}/lib/
  
# conf
#COPY files/conf/*.xml ${TOMCAT_PATH}/conf/

# Maven Repo. Direcotry Permission
RUN chmod 777 /usr/local/tomcat/apache-tomcat-7.0.62 -R
     
# Allow arbitrary
USER 185
  
EXPOSE 8080
   
ENTRYPOINT ["catalina.sh", "run"]
