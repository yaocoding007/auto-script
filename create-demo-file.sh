#!/bin/bash

current_dir=$(pwd)
father_dir=$(basename "$PWD")
echo $father_dir  #输出 demo
echo "$current_dir"  #输出 demo

cd $(pwd)
filename=`date +%m-%d`
prefix="03-19"
count=$(ls -1 $prefix*.$father_dir 2>/dev/null | wc -l | tr -d '[:space:]')

if [ $count == 0 ]; then
    touch  "$filename.$father_dir"
else
    touch  "$filename-$count.$father_dir"
fi



