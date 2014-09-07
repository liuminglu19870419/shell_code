#!/bin/bash
#打印环境变量
printenv

#显示单个环境变量
echo $HOME

#显示局部环境变量
set

#设置环境变量
temp＝temping
echo $temp

#设置全局环境变量
export $temp

#删除环境变量
unset temp

#环境变量作为数组操作
A='test the length'
#输出字符串长度
echo ${#A}
#数组操作（）可以将一个字符串按照空格分为一个数组
A=($A)
for ((i=0;i<3;i++))
do
    echo ${A[$i]}
done

#显示数组全部变量
echo ${A[*]}

#${A[@]} 或 ${A[*]}可以获得整个数组
echo ${A[@]}

#${A[0]}可以获得第一个元素
echo ${A[0]}

#${#A[@]} 或 ${#A[*]}可以输出数组的长度
echo ${#A[*]}
