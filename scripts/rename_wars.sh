#!/bin/bash -xe
# CodeDeploy agent logs are stored in /var/log/aws/codedeploy-agent/codedeploy-agent.log
#                                     /opt/codedeploy-agent/deployment-root/deployment-logs/codedeploy-agent-deployments.log
#                                     /opt/codedeploy-agent/deployment-root/<deployment-group-ID>/<deployment-ID>/logs/scripts.log
#                                     
# exec 2>&1

echo "-xxxxxxxxxx Running war renamer script xxxxxxxxxx-"

# appspec.yml did deploy our war file to /opt/apache-tomcat-9.0.80/webapps during the Install event
cd /opt/apache-tomcat-9.0.80/webapps

# delete existing ROOT dir
rm -rf ROOT
# rename our war file so it will be the root application
mv simpleJavaWebApp-1.0-SNAPSHOT.war ROOT.war

echo "-xxxxxxxxxx End of war renamer script xxxxxxxxxx-"
