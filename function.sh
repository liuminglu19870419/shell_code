#!/bin/bash
#shell 函数调用
#总结function 关键字可有可无
#如果没有在function中指明local那么默认为调用外部变量
#函数内部使用$1,$2的方式获得参数， $0获得的是函数名
#return只能返回整数，如果需要获得多个返回值，那么就是用全局变量保存多个返回值
#return返回值只能使用$?获得
#如果使用红色字体（total=$(funSum $B $C)）的方式调用，那么回新启一个进程
#全局变量在里面修改不会在外边改变，但是仍旧能获得返回值
#函数调用示例：

outnum="out number"
echo "$outnum"
function funSum()
{
    local innernum="inner number"
    outnum="out number changed"
    echo $1,$2
    echo "$outnum"
    echo $innernum
    return $(($1+$2))
}
B=4
C=5
funSum $B $C
total=$?
echo "$outnum"
echo $total
outnum="second try"
total=$(funSum $B $C) #新启动一个进程调用此函数
total=$?
echo "$outnum"
echo $total

