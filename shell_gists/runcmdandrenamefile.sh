#! /bin/bash
set -exuo pipefail
sourcedir='/data0/lijingqi/mytpcdstools/v2.13.0rc1/selectsql'
destdir='/data0/lijingqi/mytpcdstools/v2.13.0rc1/newsql/tmp'
i=1
for file in $(ls "$sourcedir"| grep -E "[a-z0-9A-Z]*.tpl")
do 
    filename=${file%.*}    
	if [[ $filename == "netezza" ]];then
		continue
	fi
 	../dsqgen -DIRECTORY $sourcedir -TEMPLATE  "$file" -DIALECT netezza   -FILTER Y  > $destdir/"$filename".sql
 	((i++))
 done
 echo "finish"