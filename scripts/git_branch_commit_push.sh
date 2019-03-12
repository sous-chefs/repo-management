#!/bin/bash

# $1=path to ssh key, $2=branch name, $3=commit message
for D in *; do
  cd ${D}
  ssh-agent bash -c "ssh-add $1; git checkout master"
  ssh-agent bash -c "ssh-add $1; git pull origin master"
  ssh-agent bash -c "ssh-add $1; git branch -D $2"
  ssh-agent bash -c "ssh-add $1; git checkout -b '$2'"
  ssh-agent bash -c "ssh-add $1; git add ."
  ssh-agent bash -c "ssh-add $1; git commit -m '$3'"
  ssh-agent bash -c "ssh-add $1; git push origin $2"
  cd ..
done
