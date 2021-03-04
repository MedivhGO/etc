#grep -lZ "main"  ./* | xargs -0 cat # -l匹配到的文件名,Z 以\0位分隔符
grep -c "print" -r . #显示匹配到的行数