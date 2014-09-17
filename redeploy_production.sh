#!/bin/bash

ssh bestrecards@178.62.0.194 -A '
  cd /home/bestrecards/www/CardsProject/
  git pull origin master
  source ~/.gvm/bin/gvm-init.sh
  gvm use grails 2.4.2
  rm /home/bestrecards/www/CardsProject/grails-app/assets/pipeline -r
  mkdir /home/bestrecards/www/CardsProject/grails-app/assets/pipeline
  grails clean all
  grails prod war target/ROOT.war
'
ssh root@178.62.0.194 -A '
  cp /home/bestrecards/www/CardsProject/target/ROOT.war /var/lib/tomcat7/webapps
  /etc/init.d/tomcat7 restart
'