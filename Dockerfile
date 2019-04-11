#FROM registry.access.redhat.com/jboss-webserver-3/webserver31-tomcat7-openshift
FROM tomcat7-base:latest
    
USER root
  
#ARG TOMCAT_PATH=/opt/webserver
ARG TOMCAT_PATH=/usr/local/tomcat/apache-tomcat-7.0.62
  
# App 복사
COPY files/webapps/*.war ${TOMCAT_PATH}/webapps/
   
# Lib
#COPY files/lib/*.jar ${TOMCAT_PATH}/lib/
  
# conf
#COPY files/conf/*.xml ${TOMCAT_PATH}/conf/
  
EXPOSE 8080
   
ENTRYPOINT ["catalina.sh", "run"]
