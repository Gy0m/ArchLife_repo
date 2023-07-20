#!/bin/bash

rm ArchLife_repo*

echo "repo-add"
repo-add -n -R ArchLife_repo.db.tar.gz *.pkg.tar.zst
sleep 5

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
