#!/bin/bash

current_dir=$(pwd)
father_dir=$(basename "$PWD")
echo $father_dir  #输出 demo
echo "$current_dir"  #输出 demo

[[ $1 ]] && FILE_TYPE="$1" || FILE_TYPE="$father_dir"

echo FILE_TYPE:$FILE_TYPE

cd $(pwd)
filename=`date +%m-%d`
count=$(ls -1 $filename*.$FILE_TYPE 2>/dev/null | wc -l | tr -d '[:space:]')

echo count: $count

if [ $count == 0 ]; then
    touch  "$filename.$FILE_TYPE"
else
    touch  "$filename-$count.$FILE_TYPE"
fi



