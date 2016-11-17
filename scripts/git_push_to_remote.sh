#!/usr/bin/env bash
# $1 == branchnamec
exit 0
git checkout -b $1
git push -u origin $1