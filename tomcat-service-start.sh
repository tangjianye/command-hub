#!/bin/bash

#------------------------------------------------------------------------------#
# 重启服务
# tomcat服务、sonar服务、gogs服务
#------------------------------------------------------------------------------#

echo ======================Tomcat server======================
tomcatDir="/usr/local/apache-tomcat-7.0.78"
if [[ -d "$tomcatDir" ]]; then
  echo "$tomcatDir exists, start tomcat server!"
  sh ${tomcatDir}/bin/startup.sh;
else
  echo "$tomcatDir not exists."
fi

echo "Open firewall 8080 port."
firewall-cmd --permanent --zone=public --add-port=8080/tcp;

echo ======================Sonar server======================
sonarDir="/usr/local/sonarqube-5.6.6"
if [[ -d "$sonarDir" ]]; then
  echo "$sonarDir exists, start sonar server!"
  sh ${sonarDir}/bin/linux-x86-64/sonar.sh start;
else
  echo "$sonarDir not exists."
fi

echo "Open firewall 9000 port."
firewall-cmd --permanent --zone=public --add-port=9000/tcp;

echo ======================Restart firewall======================
firewall-cmd --reload;

echo ======================Commond End======================