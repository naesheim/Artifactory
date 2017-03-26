Tag 5.1.4:
Specs:
Artifactory: 5.1.4
OS: Alpine
JDK: 8
Tomcat: 8

Tag 4.16.0:

Specs:
Artifactory: 4.16.0
OS: Alpine
JDK: 8
Tomcat: 8


Size : 216 Mb

Usage:
docker run -it -p <local-port>:<container-port> -v <local artifactory path>/:/artifactory/ praqma/artifactory:<tag>

runs tomcat server on localhost:8080 - redirects to /artifactory
mounts your local artifactory path to the container $ARTIFACTORT_HOME, which is /artifactory
