FROM registry.access.redhat.com/jboss-webserver-3/webserver31-tomcat7-openshift
    
USER root
  
ARG TOMCAT_PATH=/usr/local/apache-tomcat-7.0.84
  
# App 복사
COPY files/webapps/*.war ${TOMCAT_PATH}/webapps/
   
# Lib
#COPY files/lib/*.jar ${TOMCAT_PATH}/lib/
  
# conf
#COPY files/conf/*.xml ${TOMCAT_PATH}/conf/
  
EXPOSE 8080
   
#ENTRYPOINT ["catalina.sh", "run"]
