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

echo
tput setaf 3
echo "################################################################"
echo "################### Start"
echo "################################################################"
tput sgr0
echo

# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master


#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config
#https://medium.com/clarusway/how-to-use-git-github-without-asking-for-authentication-always-passwordless-usage-of-private-git-8c32489bc2e9
#https://blog.nillsf.com/index.php/2021/05/27/github-sso-using-password-protected-ssh-keys

project=$(basename `pwd`)
echo "-----------------------------------------------------------------------------"
echo "this is project https://github.com/Gy0m/$project"
echo "-----------------------------------------------------------------------------"

git init
git config --global pull.rebase false
git config --global push.default simple
git config --global user.name "Gy0m"
git config --global user.email "gy0m@duck.com"
git config --global core.editor lvim
# #git config --global credential.helper cache
# #git config --global credential.helper 'cache --timeout=32000'
git config --global push.default simple
git config --global init.defaultBranch main


git remote set-url origin git@github.com:Gy0m/$project

echo
tput setaf 2
echo "################################################################"
echo "################### End"
echo "################################################################"
tput sgr0
echo
