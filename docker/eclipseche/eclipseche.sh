#!/bin/bash

docker run -ti --net=host --name che -P \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v /home/theasker/che/lib:/home/theasker/che/lib-copy \
 -v /home/theasker/che/workspaces:/home/theasker/che/workspaces \
 -v /home/theasker/che/tomcat/temp/local-storage:/home/user/che/tomcat/temp/local-storage \
 codenvy/che
