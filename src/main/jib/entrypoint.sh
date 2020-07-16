#!/bin/sh

echo "The application will start in ${JHIPSTER_SLEEP}s..." && sleep ${JHIPSTER_SLEEP}
AGENT_OPTS="-Dappdynamics.agent.accountAccessKey=qbun9eri2zro -Dappdynamics.controller.hostName=apjsales2.saas.appdynamics.com -Dappdynamics.controller.port=443 -Dappdynamics.controller.ssl.enabled=true -Dappdynamics.agent.accountName=apjsales2 -Dappdynamics.agent.applicationName=TreasuryPortal -Dappdynamics.agent.tierName=Treasury -Dappdynamics.agent.nodeName=node1"
exec java -javaagent:/AppServerAgent-20.6.0.30246/javaagent.jar ${AGENT_OPTS} ${JAVA_OPTS} -noverify -XX:+AlwaysPreTouch -Djava.security.egd=file:/dev/./urandom -cp /app/resources/:/app/classes/:/app/libs/* "com.mycompany.myapp.JhipApp"  "$@"
