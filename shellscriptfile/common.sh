#!/bin/bash
rm tabledata
mv aaa rawfile
dos2unix rawfile
cat ./rawfile | while read -r  line 
do
    #echo $line | tr -s ' ' | awk '{printf("{"); for(i=1;i<=NF;i++)if (i!=NF)printf("\"%s\",",$i);el
    #echo $line | tr -s ' ' | awk '{print $1}' >> allchannelid
    echo "$line" | tr -s ' ' | awk '{printf("add (\"%s\": %d);\n",$1,1)}' >> bistatusdst
    #echo $line | tr -s ' ' | awk '{printf("%s\n",$1)}' >> reality
done