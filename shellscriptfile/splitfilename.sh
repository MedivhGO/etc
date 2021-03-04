#! /bin/bash
trap "trap - SIGTERM && kill -- -$$" SIGINT SIGTERM EXIT #当父脚本退出时杀掉其打开的所有进程
set -euxo pipefail
file_jpg="Sample.jpg"
echo ${#file_jpg} # ${#var}求字符串串长
name=${file_jpg%.*}
echo "File name is : $name"
extension=${file_jpg#*.}
echo "extension is : $extension"
#timeout 0.1s echo "abc" #对命令设置超时时间
#${VAR%.*} 删除%右侧的通配符所所匹配到的字符串,从右向左遍历,非贪婪. $$贪婪
#${VAR#*.} 删除#右侧的通配符所匹配到的字符串,从左向右遍历非贪婪.  ##贪婪


