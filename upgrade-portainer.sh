# assumes the container is named portainer and we're using Community Edition
# Order of Operations
#  1. stop portainer
#  2. remove portainer
#  3. pull latest portainer
#  4. restart portainer

docker stop portainer
docker rm portainer
docker pull portainer/portainer-ce:latest
docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
