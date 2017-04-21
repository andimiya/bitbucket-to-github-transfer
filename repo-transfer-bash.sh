#!/bin/bash
#
reponame="
bitbucketRepoName
anotherBitbucketRepoName"

for repo in $reponame; do

  echo 'https://andimiya@bitbucket.org/sudokrew/'$repo'.git'
  git clone 'https://andimiya@bitbucket.org/sudokrew/'$repo'.git'
  cd $repo
  git remote add upstream 'git@github.com:sudokrew/bitbucket-'$repo'.git'
  git push upstream master
  git push --tags upstream

done
