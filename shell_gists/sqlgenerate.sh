 #!/bin/sh 
set -euxo pipefail
dir='/Users/allen/myscriptrepo'
sourcedir='/data0/lijingqi/mytpcdstools/v2.13.0rc1/selectsql'
destdir='/data0/lijingqi/mytpcdstools/v2.13.0rc1/newsql'
i=1
for file in $(ls $dir | grep .sh)
do 
	echo $file
    echo $i
 	echo "./dsqgen -DIRECTORY $sourcedir -TEMPLATE  "$file" -DIALECT netezza   -output $destdir/template${i}.sql"
 	((i++))
done
echo "finish"