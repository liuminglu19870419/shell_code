#!/bin/bash
collection=(infos events category)
len=${#collection[*]}
echo $len
for((i=0;i<${len};i++))
do
    echo 'backup:' ${collection[${i}]}
    cur_collect=${collection[${i}]}
    mongoexport --host 10.2.10.1 --db weibo --collection ${cur_collect} --out \
    ${cur_collect}.out
    echo 'finished:' ${collection[${i}]}
done
