#!/bin/bash

reponame="
reponames
"
for repo in $reponame; do
  echo '{ \
    "name":"'"$repo"'", \
    "auto_init": true, \
    "private": true \
  }'

  curl -i -H 'Authorization: token GITHUBTOKEN' \
    -d '{"name":"'"$repo"'","private": true}' \
    https://api.github.com/orgs/sudokrew/repos
done
