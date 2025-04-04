BRANCH="master"

echo "Pulling latest code $BRANCH..."
git pull origin $BRANCH

npm install

npm run build


BUILD_DIR="dist"

# Nginx root path
NGINX_ROOT="/usr/share/nginx/html"

sudo rm -rf $NGINX_ROOT/*

sudo cp -r $BUILD_DIR/* $NGINX_ROOT/*

echo "deployment completed"