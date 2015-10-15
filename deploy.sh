#!/bin/sh
kill -9 $(echo $(ps -ef | grep tomcat) | cut -d " " -f 2)
git pull
mvn clean compile war:war
mv target/*.war target/ROOT.war
rm -rf /usr/local/tomcat6/webapps/ROOT.*
mv target/ROOT.war /usr/local/tomcat6/webapps/
/usr/local/tomcat6/bin/startup.sh
tail -n 200 -f /usr/local/tomcat6/logs/catalina.out
