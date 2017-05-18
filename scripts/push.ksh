#!/bin/ksh

git add . &&
git status &&
git commit -m "updated .vim" &&
git push vim master
