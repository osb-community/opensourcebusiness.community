#!/bin/bash

set -e

git checkout main
git fetch --all
git pull origin main
git checkout gh-pages
git pull origin gh-pages
git merge main
hugo
yes | cp -r public/* .
git add -A
git commit
git push origin gh-pages
