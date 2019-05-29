AUTHOR="$(git log -1 | grep Author | cut -d '<' -f1)"
DATE="$(date +%F-%r)"
curl -X POST -H 'Content-type: application/json' --data "{\"attachments\": [{\"color\": \"#2eb886\",\"title\": \":travis_ci: Gitbook Internal Build started now! :travis_ci: \n\n\n$AUTHOR\n\n\nDate: $DATE\n\n\nhttps://pages.github.ibm.com/SOSTeam/SOS-Internal-Docs/\n\n\n\",}]}" $WEBHOOK
npm install
npm install -g gitbook-cli
gitbook install
ls
free -m
git config user.email "travis@travis.org"
git config user.name "travis" # this email and name can be set anything you like
make travis
git push -fq https://${GH_TOKEN}@github.ibm.com/SOSTeam/SOS-Internal-Docs HEAD:master
DATE="$(date +%F-%r)"
curl -X POST -H 'Content-type: application/json' --data "{\"attachments\": [{\"color\": \"#2eb886\",\"title\": \":smile: Gitbook Internal Build finished successfully! :smile: \n\n\n$AUTHOR\n\n\nDate: $DATE\n\n\nhttps://pages.github.ibm.com/SOSTeam/SOS-Internal-Docs/\n\n\n\",}]}" $WEBHOOK