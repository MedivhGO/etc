#!/bin/bash



number1=10
number2=20

if [ $number1 -gt 0 -a $number2 -lt 30 ];then
	echo "branch1 true";
fi




fpath='/etc/passwd'

if [ -e $fpath ];then
	echo "File exists"
else
	echo "Does not exist"
fi

str1="Not empty"
str2=""
if [[ -n $str1 ]] && [[ -z $str2 ]];
then
	echo "str1 is nonempty and str2 is empty string."
fi

testvar=10

if [ $testvar -eq 10 ];then
	echo "equal 10"
else
	echo "not equal 10"
fi

testvar=0

if test $testvar -eq 0;then
	echo "equal 0"
else
	echo "not equal 0"
fi

andvar1="andvar1"
andvar2="andvar2"

orvar1="orvar1"
orvar2="orvar2"


if [[ $andvar1 != $andvar2 ]] || [[ $orvar1 == $orvar2 ]];then
	echo "true";
elif [[ -n $andvar1 ]] && [[ -n $andvar2 ]];then
		echo "false";
else
		echo "else";
fi 