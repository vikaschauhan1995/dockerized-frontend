BRANCH="master"

echo "Pulling latest code $BRANCH..."
git pull origin $BRANCH

sudo usermod -aG docker $USER
# newgrp docker

echo "Removing docker container..."
sudo docker-compose -f docker-compose.prod.yml down

echo "Starting Docker Compose..."
sudo docker-compose -f docker-compose.prod.yml up -d --build 
