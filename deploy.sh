#!/bin/sh

DATE=`date '+%Y-%m-%d %H:%M:%S'`
rm -rf testequeridotextos
# git clone https://bot-queridotextos:atualizartextos1@github.com/BrunoEleodoro/testequeridotextos
# cd testequeridotextos
date '+%Y-%m-%d %H:%M:%S' > last_update.txt
curl "https://www.googleapis.com/blogger/v3/blogs/2771518682926329856/posts?fetchImages=true&maxResults=200&key=AIzaSyBt2eRbKEj-wMbDDuRo9QAVR6FP2EeYXnk" > data.json
git init
git add *
git commit -m "${DATE}"
git config user.email "travis@travis.org"
git config user.name "travis" # this email and name can be set anything you like
echo "foi"
git push https://bot-queridotextos:atualizartextos1@github.com/BrunoEleodoro/testequeridotextos/ --all
