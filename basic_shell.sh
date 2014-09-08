#!/bin/bash
#shell基本功能：变量，计算，文本输出使用
#输出
password=lml19870419
echo $password | sudo -S echo "hello" 

#同行显示
echo -n the time is " " 
date
echo "who's login "
who

#使用变量
var1=10
echo $var1
echo ${var1}

#反引号，将命令执行结果输出给变量
var1=`date +%y%m%d`
ls -al > $var1.tmp

#输入 输出重定向
wc < basic_shell.sh > wordcount.tmp

#shell执行数学计算
var_expr=`expr 5 \* 3`
echo $var_expr
#bash only
var_expr=$[5 / 4]
echo $var_expr
var1=100
var2=50
var3=10
var3=$[${var3} + (${var2} - ${var1})]
echo $var3
let "var3=${var1}+${var2}"
echo $var3

#浮点计算
var3=`echo "scale=4; 3.0 / 7" | bc`
echo ${var3}
#升级版
var3=`bc << EOF
scale=10
tmp1=${var2}/${var1}
tmp2=tmp1*${var3}
tmp1+tmp2
EOF`
echo $var3

#查看退出状态码
date %t
echo $?

#指定退出状态码
exit 44
