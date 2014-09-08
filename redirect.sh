#!/bin/bash

#重定向标准输入,输出,错误输出
ls -al *.sh > ls.tmp
ls -al badtest 2> ls_error.tmp
cat < redirect.sh

#临时重定向
echo "info" >&1
echo "error" >&2

#永久重定向
exec 1>ls.tmp
exec 2>ls_error.tmp
exec 0< redirect.sh

while read line
do
	echo $line
done

#关闭描述符
exec 1>&-
echo "close stdout 1"

#阻止命令输出
ls -al > /dev/null
