#!/bin/bash
#set -e
##################################################################################################################        
#      ______        ____           
#     / ____/__  __ / __ \ ____ ___ 
#    / / __ / / / // / / // __ `__ \
#   / /_/ // /_/ // /_/ // / / / / /
#   \____/ \__, / \____//_/ /_/ /_/ 
#         /____/                    
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

# Creating the databases
cd x86_64
sh update_repo.sh

# checking if i have the latest files from github
cd ..

echo "checking for newer files online firt"
git pull

# Below command will backup everything inside the project folder
git add .

# Give a comment to the commit if you want

echo
tput setaf 3
echo "####################################"
echo "Write your commit comment!"
echo "####################################"
tput sgr0
echo


#read input
input="update PKGS"

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

git push -u origin main


echo
tput setaf 3
echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
tput sgr0
echo
