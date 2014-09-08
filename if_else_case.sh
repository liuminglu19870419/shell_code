#!/bin/bash
#shell if条件判断，case条件判断

#if语句：
#   条件表达式

filefolder='lmltest'
if [ -d $filefolder ]
then
    echo 'exist'
elif [ ! -d $filefolder ]
then
    echo 'not exist'
    mkdir -p $filefolder
else
    echo 'i don`t know'
fi

#文件表达式
#if [ -f  file ]    如果文件存在
#if [ -d ...   ]    如果目录存在
#if [ -s file  ]    如果文件存在且非空 
#if [ -r file  ]    如果文件存在且可读
#if [ -w file  ]    如果文件存在且可写
#if [ -x file  ]    如果文件存在且可执行   


#整数变量表达式
#if [ int1 -eq int2 ]    如果int1等于int2   
#if [ int1 -ne int2 ]    如果不等于    
#if [ int1 -ge int2 ]       如果>=
#if [ int1 -gt int2 ]       如果>
#if [ int1 -le int2 ]       如果<=
#if [ int1 -lt int2 ]       如果<

#字符串变量表达式
#if  [ $a = $b ]                 如果string1等于string2
#                                字符串允许使用赋值号做等号
#if  [ $string1 !=  $string2 ]   如果string1不等于string2       
#if  [ -n $string  ]             如果string 非空(非0），返回0(true)  
#if  [ -z $string  ]             如果string 为空
#if  [ $sting ]                  如果string 非空，返回0 (和-n类似)  

#if语句缩减模式:
#如果为真则执行后面
[ -d $filefolder ] && echo "exist" $filefolder
#如果为假则执行后面
[ -d $filefolder ] || echo "not exist" $filefolder

#case语句
while echo "enter y/n :"
do
    read yn
    case $yn in
        [Yy]) echo input yes;;
        yes) echo input yes;;
        [Nn]) echo input no;;
        no) echo input no;;
        NO) echo input no;;
        No) echo input no;;
        * ) echo "only accept Y,y,N,n,YES,yes,NO,no" ;;
    esac
done
#case 和esac配对
#每个case之后使用;;缺省项使用*)
