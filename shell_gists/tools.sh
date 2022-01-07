#!/bin/bash

cat ./tableslist  |  while read line
do
    #tmp="{\"$line\" ,mk_w_$line,{pr_w_$line,ld_w_$line},NULL},"
    tmp="#include \"w_"$line".h\""
    echo $tmp >> newheader
done