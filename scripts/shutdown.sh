#!/bin/bash -xe
# CodeDeploy agent logs are stored in /var/log/aws/codedeploy-agent/codedeploy-agent.log
#                                     /opt/codedeploy-agent/deployment-root/deployment-logs/codedeploy-agent-deployments.log
#                                     /opt/codedeploy-agent/deployment-root/<deployment-group-ID>/<deployment-ID>/logs/scripts.log
#                                     
# exec 2>&1

echo "-xxxxxxxxxx Running shutdown script xxxxxxxxxx-"

# shutdown Tomcat
/opt/apache-tomcat-9.0.80/bin/shutdown.sh

echo "-xxxxxxxxxx End of shutdown script xxxxxxxxxx-"
