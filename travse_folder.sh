#!/bin/bash
#遍历文件夹及文件夹下子文件夹示例

flag1="."
flag2=".."
function funSum()
{
    for file in `ls -a $1`
    do
        if [ ${file} = ${flag1} ]
        then
            echo $file
        elif [ ${file} = ${flag2} ] 
        then
            echo $file
        else
            #do something
            echo ${file} 

            if [ -d $1"/"${file} ]
            then
                local buffer=${1}"/"${file}
                funSum $buffer
            fi
        fi
    done
}

input="test"
funSum $input

