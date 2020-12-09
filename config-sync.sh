#!/bin/bash

cd /home/cjdenio/Documents/github/config

if ! git diff --exit-code --quiet;
then
  git add .
  git commit -m "Update config files"
  git push
else
  echo "No files to update"
fi
