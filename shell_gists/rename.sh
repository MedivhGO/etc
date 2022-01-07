#!/bin/sh
oldsuffix="sql"
newsuffix="tpl"
dir=$(eval pwd)

for file in $(ls $dir | grep .${oldsuffix})
    do
        name=$(ls ${file} | cut -d. -f1)
        mv $file ${name}.${newsuffix}
    done
echo "change jpeg to jpg successd!"