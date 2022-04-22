FROM tomcat 

RUN cp -R /usr/local/tomcat/webapps.dist/. /usr/local/tomcat/webapps/

ADD /dest/SampleWebApp.war /usr/local/tomcat/webapps/

RUN cd /usr/local/tomcat/

RUN rm -rf /usr/local/tomcat/webapps/manager/META_INF/context.xml usr/local/tomcat/conf/tomcat-users.xml

ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/  

ADD tomcat-users.xml /usr/local/tomcat/conf/

EXPOSE 8080

CMD ["catalina.sh", "run"]
