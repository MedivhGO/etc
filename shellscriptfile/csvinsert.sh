#!/bin/bash

cat tableslist | while read line
do
    echo "'/data0/lijingqi/unicomdir/"$line".dat'  SEPARATOR '|' UNQUOTED" >> newcsvsnippt
done