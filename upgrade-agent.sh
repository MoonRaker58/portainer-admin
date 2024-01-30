# assumes the container is named portainer_agent
# Order of Operations
#  1. stop portainer_agent
#  2. remove portainer_agent
#  3. pull latest portainer_agent
#  4. restart portainer_agent

docker stop portainer_agent
docker rm portainer_agent
docker pull portainer/agent:latest
docker run -d -p 9001:9001 --name portainer_agent --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker/volumes:/var/lib/docker/volumes portainer/agent:latest
