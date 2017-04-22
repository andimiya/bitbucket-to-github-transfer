#!/bin/bash
#
reponame="
reponames
"

for repo in $reponame; do

  git clone --mirror 'https://andimiya@bitbucket.org/sudokrew/'$repo'.git'
  cd $repo'.git'
  git push --mirror 'git@github.com:sudokrew/bitbucket-'$repo'.git'

done
