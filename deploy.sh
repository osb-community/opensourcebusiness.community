#!/bin/bash

git checkout main
git fetch --all
git pull origin main
git checkout gh-pages
git pull origin gh-pages
git merge main
hugo
rm -f public/images/*Zone.Ident*
rm -f public/images/Podcasts/*Zone.Ident*
yes | cp -r public/* .
git add -A
git rm -f public/images/Podcasts/*Zone.Ident*
git rm -f public/images/*Zone.Ident*
git rm -f images/*Zone.Ident*
git rm -f images/Podcasts/*Zone.Ident*
git commit
git push -u origin gh-pages
