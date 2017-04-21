#!/bin/bash

reponame="
newGithubRepoName
anotherNewGithubRepoName
"
for repo in $reponame; do
  echo '{"name":"'"$repo"'"}'

  curl -i -H 'Authorization: token INSERTTOKEN' \
      --data '{"name":"'"$repo"'"}' https://api.github.com/orgs/sudokrew/repos
done
