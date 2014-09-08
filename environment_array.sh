#!/bin/bash
#shell 全局，局部环境变量使用
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

#特殊
file=/dir1/dir2/dir3/my.file.txt
echo ${file}
echo ${file#*/}		#拿掉第一条 / 及其左边的字符串：dir1/dir2/dir3/my.file.txt
echo ${file##*/}	#拿掉最后一条 / 及其左边的字符串：my.file.txt
echo ${file#*.}		#拿掉第一个 .  及其左边的字符串：file.txt
echo ${file##*.}	#拿掉最后一个 .  及其左边￥的字符串：txt
echo ${file%/*}		#拿掉最后条 / 及其右边的字符串：/dir1/dir2/dir3
echo ${file%%/*}	#拿掉第一条 / 及其右边的字符串：(空值)
echo ${file%.*}		#拿掉最后一个 .  及其右边的字符串：/dir1/dir2/dir3/my.file
echo ${file%%.*}	#拿掉第一个 .  及其右边的字符串：/dir1/dir2/dir3/my
echo ${file:5:5}	#提取第 5 個字節右邊的連續 5 個字節：/dir2
