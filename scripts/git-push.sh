#!/bin/bash

[[ $1 ]] && MSG=$1 || MSG="update"

echo -e "\n"

echo -e "\033[33m dirname: `pwd`  \033[0m" 

echo -e "\n"

branch=$(git symbolic-ref --short -q HEAD)

echo -e "\033[33m 当前分支: $branch \033[0m" 

echo -e "\n"

echo -e "\033[33m commit message: $MSG \033[0m"

echo -e "\n"

git add .
git commit -m "${MSG}"
git push origin $branch

echo -e "\033[36m 提交上去了，关机下班 \033[0m"

echo -e "\n"