#!/bin/bash

echo "param number:$#"
echo "scname:$0"
echo "first:$1"
echo "second:$2"
echo "argume:$@"
echo "show parm list str:$*"
echo "show process id:$$"
echo "show procomm stat:$?"


abc="abcd aaa bbb ccc eee temspa"
for i in $abc
do 
	case $i in
		abcd)
			echo 1
			;;
		aaa)
			echo 2
			;;
		bb*)
			echo 3
			;;
		"ccc")
			echo 4
			;;
		"eee")
			echo 5
			;;
		"temspa")
			echo 6
			;;
		*)
			echo -1
			;;
	esac
done