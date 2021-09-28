#!/bin/bash

#############################
#-------- PARAMETERS --------

USERNAME=$1
EMAIL=$2 # this mail is used to generate SSH key for GitHub so it must be the same of your GH account

sudo apt-get update
###################################################
#-------- GIT INSTALLATION & CONFIGURATION --------

sudo apt-get -y install git
git config --global user.name $USERNAME
git config --global user.email $EMAIL   

#--------------------------------------------------


#######################################
#-------- GITHUB CONFIGURATION --------

# Generating a new SSH key
ssh-keygen -t ed25519 -C $EMAIL

# Start the ssh-agent in the background
eval "$(ssh-agent -s)"

# Add your SSH private key to the ssh-agent
ssh-add ~/.ssh/id_ed25519

# Downloads and installs xclip. If you don't have `apt-get`, you might need to use another installer (like `yum`)
sudo apt-get -y install xclip

# Copies the contents of the id_ed25519.pub file to your clipboard
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
echo "now you can paste the SSH key in GitHub"
echo "THIS HAS TO BE DONE IF YOU WANT TO INSTALL TO REST OF THE PROGRAMS"

#--------------------------------------
