#!/bin/bash

#打印第一列字符串长度为7的行号
awk -F '|' '{if(length($1) == 7) print NR}'
