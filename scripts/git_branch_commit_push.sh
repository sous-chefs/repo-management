#!/bin/bash

for D in *; do
  cd ${D}
  git pull origin master
  git checkout -b "$1"
  git add .
  git commit -m "$2"
  git push origin codeowners
  cd ..
done
