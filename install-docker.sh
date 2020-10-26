mkdir -p ~/docker-install && cd $_
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
sudo apt install -y docker-compose
