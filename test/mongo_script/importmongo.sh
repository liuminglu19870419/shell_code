#!/bin/bash
result=`ls *.out | awk -F"." '{print $1}'`
collection=($result)
len=${#collection[*]}
echo $len
for((i=0;i<${len};i++))
do
    echo 'import:' ${collection[${i}]}
    cur_collect=${collection[${i}]}
    mongoimport --collection ${cur_collect} --db weibo --file \
    ${cur_collect}.out
    echo 'finished:' ${collection[${i}]}
done
