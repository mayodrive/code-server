# reload host nginx
sudo cp worker.tmp.conf /etc/nginx/sites-enabled/worker.conf
sudo systemctl restart nginx

# start code server container
mkdir -p out
cp docker-compose.yml out/
cp Dockerfile out/
#mkdir -p out/sites-enabled
#export HOST=$(curl icanhazip.com)
#envsubst '$HOST' < worker.template.conf > out/sites-enabled/worker.conf
#cp api.conf out/sites-enabled/api.conf
cd out
echo "
USER=$USER
UID=$(id -u)
GID=$(id -g)
PWD=$PWD
HOME=$HOME" > .env
docker-compose up
