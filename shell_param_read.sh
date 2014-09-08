#!/bin/bash
#shell参数输入，用户输入

#脚本参数输入，参数移动
total=$[$1 * $2]
echo $0
echo `basename $0` #获取程序名
echo $# #参数个数
echo ${total}

#$*:将所有参数当作一个参数, #@将参数拆成单个参数
count=1
for param in "$*"
do
	echo "\$* #$count = $param"
	count=$[$count + 1]
done

count=1
for param in "$@"
do
	echo "\$@ #$[count] = $param"
	count=$[$count + 1]
done

#shift使用,移动变量
echo $#
while [ -n "$1" ]
do
    echo "$1"
    shift
done

#read使用:-t 计时, -p 打印提示信息, -s 隐藏方式读入, -n1 读取一个字符后结束
if read -t 5 -s -p "input a number:" num
then
    echo "$num"
else
    echo "\n"
    echo "slow"
fi

read -n1 -p "input a number:" num
echo
case $num in
Y | y) echo yes;;
N | n) echo no;;
* ) echo undefine;;
esac

