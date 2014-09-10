#!/bin/bash
#awk 使用

#awk 参数
#-F fs:行内字段分隔符
#-f file:awk脚本文件名
#-v var=value:设置一个变量
#-mf N:最大字段数
#-mr N:最大行数
awk -F: '{print $1}' /etc/passwd
echo ===============================

#一般使用,调用脚本,设置变量
awk -f awk.script end="this is end" awk.data
