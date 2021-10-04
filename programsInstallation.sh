#!/bin/bash

#INSTALLATION OF COMMONLY USED SOFTWARE FOR DEVELOPMENT (UBUNTU!)

echo "############### THE INSTALLATION OF THE PROGRAMS HAS BEGUN! ###############"

######################################
#-------- VSCODE INSTALLATION --------

snap install --classic code

#------------------------------------


######################################
#-------- DOCKER INSTALLATION --------

# Install using the repository

# SET UP THE REPOSITORY

# 1. Update the apt package index and install packages to allow apt to use a repository over HTTPS
sudo apt-get -y update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# 2. Add Docker’s official GPG key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# 3. Use the following command to set up the stable repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# INSTALL DOCKER ENGINE

# 1. Update the apt package index, and install the latest version of Docker Engine and containerd

sudo apt-get -y install docker-ce docker-ce-cli containerd.io

echo "Verify that Docker Engine is installed correctly by running the hello-world image (command inside script)."
# sudo docker run hello-world

# Installing Devilbox
sudo git clone https://github.com/cytopia/devilbox ~/devilbox
cd ~/devilbox && cp env-example .env

# Add your user to the docker group
sudo usermod -aG docker $USER

#-------------------------------------


######################################
#-------- COMPOSE INSTALLATION --------

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

echo "run sudo docker-compose up inside devilboxs's repository to check if compose is working"

#--------------------------------------


######################################
#-------- SLACK INSTALLATION --------

snap install slack --classic

echo "if you get errors related to dependencies you can run the command apt --fix-broken install"

#--------------------------------------


######################################
#-------- PINTA INSTALLATION --------

echo "if you want to install pinta (image editor that resembles to paint) search for it in the Ubuntu Software store"

#--------------------------------------


echo "############### THE INSTALLATION OF THE PROGRAMS HAS ENDED! ###############"
