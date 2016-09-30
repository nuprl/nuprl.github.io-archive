#!/bin/bash
set -e

git remote add deploy https://${GH_TOKEN}@github.com:nuprl/nuprl.github.io
git config --global user.email "prl-bot@ccs.neu.edu"
git config --global user.name "PRL Bot"

grep -v "html" .gitignore > .new-gitignore
mv .new-gitignore .gitignore

git add .
git reset HEAD .gitignore
git commit -e -m "** deploy"
echo "Committing..."

git push deploy master_test
