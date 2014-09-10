#!/bin/bash
#sed命令使用实例

echo 替换 -n:只显示处理行 -e:多个匹配 /w filename写入文件 p打印处理结果 g全局替换
sed -n -e 's/test/trial/gp; s/script/basic/w sed.tmp' sed.data
echo '==================================='
echo 限定操作的行
sed -n '2,${
    s/test/trial/2p
    =
    }' sed.data
echo '==================================='
sed -n '/^that/s/test/trial/2p' sed.data
echo '==================================='

echo 删除行
sed '1,4d' sed.data
echo '==================================='

echo 插入行
sed '1,$i\new line' sed.data
echo '==================================='

echo 追加行
sed '1,$a\new line' sed.data
echo '==================================='

echo 修改行
sed '3c\chang this line' sed.data
echo '==================================='
sed '2,3c\chang this line' sed.data
echo '==================================='

echo 转换，使用前半部分inchar替换为后半部分outchar
sed '1,$y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/' sed.data
echo '==================================='

echo 写入文件
sed '1,2w sed.tmp' sed.data
echo '==================================='

echo 读入文件
sed '3r sed.tmp' sed.data
echo '==================================='

echo 修改行,用文件替换
sed '2{
    r sed.tmp
    d
    }' sed.data
echo '==================================='

echo 移动到下一行继续执行命令
sed '/that/{n; d}' sed.data
echo '==================================='

echo 将两行合并为一行进行处理
sed '=' sed.data | sed -n 'N; s/\n/ /1p' 
echo '==================================='

echo 多行打印，只打印第一行P
sed '=' sed.data | sed -n 'N; /1/P' 
    echo '==================================='

echo 多行删除，只删除第一行D
sed '=' sed.data | sed 'N; /1\n/D' 
echo '==================================='


#h 模式空间>保持空间
#H 模式空间>>保持空间
#g 保持空间>模式空间 保持空间默认值为空
#G 保持空间>>模式空间
#x 交换保持空间模式空间
echo 保持空间
sed -n '/this/{
    h
    p
    n
    p
    g
    p
    }' sed.data
echo '==================================='

echo 排除空间, 反转文本
sed -n '{
    1!G
    h
    $p
    } ' sed.data
echo '==================================='

echo 跳转 跳过后面的替换
sed '{2,3b; s/that is/is that/; s/is/are/}' sed.data
echo '==================================='

sed '{/that/b jump; s/is/are/2; :jump; s/this/that/}' sed.data
echo '==================================='

echo 测试 t 跳过后面的替换
sed '{s/this/that/; t; s/is/are/2}' sed.data
echo '==================================='

echo "模式替代，&代表前一半部分匹配的词"
sed -n "s/th.. is/&\'s/p" sed.data
