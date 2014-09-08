#!/bin/bash
#for while until 循环

#for循环
echo "base version ${BASH_VERSION}"
for i in {0..10..1}
do
    echo "welcome $i times"
done
##############################

for i in $(seq 1 2 20)
do
    echo "welcome $i times"
done
##############################

for i in 1 2 3 4 5
do
    echo "welcome $i times"
done
##############################

#类似于c语言的for循环案例
for ((i=0;i<10;i++))
do
    echo "welcome $i times"
done
##############################

for i in "$@"
do
    echo "welcome $i times"
done
##############################

for file in `ls *.sh`
do
    echo $file
done
##############################


#while循环使用案例
#读取文件方式1
printf "%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo " cat file while read line" 
cat test.txt | while read line 
do 
      echo "get:" $line; 
done

#读取文件方式2
printf "%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo " cat file while read line" 
while read line 
do 
      echo $line; 
done < test.txt

#############################
printf "%%%%%%%%%%%%%%%%%%%%%%%%%%"
x=0
while [ "$x" -lt 10 ]
do
    y="$x"
    while [ "$y" -ge 0 ]
    do
        echo -n "$y"
        y=`expr $y - 1`
    done
    echo "$x"
    x=`expr $x + 1`
done

###############################
until循环
a=10;

until [[ $a -lt 0 ]]
do
    echo $a
    a=$(($a-1))
done


#select选择循环，使用1，2，3选择选项
select ch in "begin" "end" "exit"
do
    case $ch in
        "begin")
            echo "start something" 
            ;;
        "end")
            echo "stop something" 
            ;;
        "exit")
            echo "exit" 
            break;
            ;;
        *)
            echo "Ignorant" 
            ;;
    esac
done;
