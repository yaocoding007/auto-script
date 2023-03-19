#!/bin/bash

[[ $1 ]] && target=$1 || target="test"

echo -e "\n"

echo -e "\033[33m dirname: `pwd`  \033[0m" 

echo -e "\n"

branch=$(git symbolic-ref --short -q HEAD)

echo -e "\033[33m 当前分支: $branch \033[0m" 

echo -e "\n"

echo -e "\033[33m target branch: $target \033[0m"

echo -e "\n"

git branch -D $target
git checkout -b $target
git push origin $branch -f

echo -e "\033[36m 提交上去了 \033[0m"

echo -e "\n"