#!/bin/bash

reponame="
addrepos
"
for repo in $reponame; do
  echo https://api.github.com/repos/sudokrew/$repo

  curl -X DELETE -H 'Authorization: token GITHUBTOKEN' https://api.github.com/repos/sudokrew/$repo

done
