print()print()print()#!/bin/bash
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



mv .git/config config

rm -rf .git

sh ./git_init*

mv config .git/config

git add --all .

git commit -m "cleanup"

git push origin main --force


echo
tput setaf 3
echo "######################################"
echo "##########  Cleanup Done #############"
echo "######################################"
tput sgr0
echo