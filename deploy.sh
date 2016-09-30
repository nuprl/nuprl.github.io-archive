#!/bin/bash
set -e

tee ~/.netrc > /dev/null <<EOF
machine github.com
login dbp
password $GH_TOKEN
EOF

git remote add deploy https://github.com/nuprl/nuprl.github.io.git
git config --global user.email "prl-bot@ccs.neu.edu"
git config --global user.name "PRL Bot"

grep -v "html" .gitignore > .new-gitignore
mv .new-gitignore .gitignore

REV="** deploy nuprl/website@$TRAVIS_COMMIT"
git add .
git fetch deploy
git reset --soft deploy/master_test
git reset HEAD .gitignore
git checkout HEAD .gitignore
git commit -m "$REV"
echo "Committing..."

git push deploy HEAD:refs/heads/master_test
