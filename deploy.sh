git remote add deploy https://${GH_TOKEN}@github.com:nuprl/nuprl.github.io
git add .
git config --global user.email "prl-bot@ccs.neu.edu"
git config --global user.name "PRL Bot"
git commit -e -m "** deploy"
git push deploy master_test
