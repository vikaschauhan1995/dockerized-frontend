BRANCH="master"

echo "Pulling latest code $BRANCH..."
git pull origin $BRANCH

sudo usermod -aG docker $USER
# newgrp docker

echo "Removing Unused Containers, Images, Networks & Volumes"
sudo docker system prune -a --volumes

echo "Removing Stopped Containers"
docker container prune -f

echo "Removing Unused Networks"
docker network prune -f

echo "Removing docker container..."
sudo docker-compose -f docker-compose.prod.yml down

echo "Starting Docker Compose..."
sudo docker-compose -f docker-compose.prod.yml up -d --build 
