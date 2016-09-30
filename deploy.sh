#!/bin/bash
set -e

git remote add deploy https://${GH_TOKEN}@github.com:nuprl/nuprl.github.io
git config --global user.email "prl-bot@ccs.neu.edu"
git config --global user.name "PRL Bot"

grep -v "html" .gitignore > .new-gitignore
mv .new-gitignore .gitignore

REV="** deploy $TRAVIS_COMMIT"
git add .
git reset HEAD .gitignore
git commit -m "$REV"
echo "Committing..."

git push deploy master_test
