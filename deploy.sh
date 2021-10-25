echo "Starting to deploy docker image.."
DOCKER_IMAGE=ayoubhadi123/my-app:1.0
docker pull $DOCKER_IMAGE
docker ps -q --filter ancestor=$DOCKER_IMAGE | xargs -r docker stop
docker run -d -p 8098:8098 $DOCKER_IMAGE
