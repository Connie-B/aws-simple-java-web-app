#!/bin/bash -xe
# CodeDeploy agent logs are stored in /var/log/aws/codedeploy-agent/codedeploy-agent.log
#                                     /opt/codedeploy-agent/deployment-root/deployment-logs/codedeploy-agent-deployments.log
#                                     /opt/codedeploy-agent/deployment-root/<deployment-group-ID>/<deployment-ID>/logs/scripts.log
#                                     
# exec 2>&1

echo "-xxxxxxxxxx Running war renamer script xxxxxxxxxx-"

# appspec.yml did deploy all war files to /opt/apache-tomcat-9.0.80/webapps during the Install event
cd /opt/apache-tomcat-9.0.80/webapps

# rename the war file (remove everything after the first hyphen)  
# so 'simpleJavaWebApp-1.0-SNAPSHOT.war' becomes 'simpleJavaWebApp.war'
# for file in ./*.war ; do echo mv "$file" "${file%%-*}.war" ; done
for file in ./*.war ; do mv "$file" "${file%%-*}.war" ; done

echo "-xxxxxxxxxx End of war renamer script xxxxxxxxxx-"
