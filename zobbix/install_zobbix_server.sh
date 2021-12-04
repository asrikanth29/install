# installing docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common  gpg-agent -y  # install the essential packages
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -    # GPG key for the official Docker repository to your system
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"    # Add the Docker repository to APT sources
sudo apt update -y #update the package database with the Docker packages from the newly added repo:
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
echo "Adding current user to docker group"
sudo usermod -aG docker ${USER}
sudo systemctl enable docker
sudo systemctl status docker

