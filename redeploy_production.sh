#!/bin/bash

grails prod war target/ROOT.war
scp ./target/ROOT.war root@178.62.0.194:/var/lib/tomcat7/webapps
ssh root@178.62.0.194 -A '
  cd /home/bestrecards/www/CardsProject/
  git pull origin master
  /etc/init.d/tomcat7/restart
'
