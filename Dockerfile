#FROM registry.access.redhat.com/jboss-webserver-3/webserver31-tomcat7-openshift
FROM tomcat7-base:latest
    
#USER root
USER 185
#RUN useradd -u 185 -G root tomcat
  
#ARG TOMCAT_PATH=/opt/webserver
ARG TOMCAT_PATH=/usr/local/tomcat/apache-tomcat-7.0.62
   
# Lib
#COPY files/lib/*.jar ${TOMCAT_PATH}/lib/
  
# conf
#COPY files/conf/*.xml ${TOMCAT_PATH}/conf/

# Direcotry Permission
RUN chmod 770 /usr/local/tomcat/apache-tomcat-7.0.62 -R 
#   && chown -R tomcat:root /usr/local/tomcat/apache-tomcat-7.0.62 
     
# App 복사
#COPY files/webapps/simple ${TOMCAT_PATH}/webapps/
ADD files/webapps/simple ${TOMCAT_PATH}/webapps/simple

# Allow arbitrary
USER 185
  
EXPOSE 8080
   
ENTRYPOINT ["catalina.sh", "run"]
