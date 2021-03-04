ls -ltrhd */ #只列出目录
ls -l | grep ^- #以长格式只列出文件
netstat -ltun #查看监听的端口
ps auxf #以树形显示运行进程
sudo lsof -i tcp -i udp #查看开启的端口
find . -name \*.cc | xargs wc -l | tail -1 | awk '{print $1}' #统计代码行数
ls -lrt  /usr/bin #列出新安装的程序
python -m http.server #python3开启SimpleHttpServer
echo $SSH_CLIENT | cut -f 1 -d ' ' #获取你所来自的主机IP
route -n | grep "^0\." | awk '{print "Gateway to the World: "$2", via "$NF""}' #显示默认网关
tmux attach -t 0 #开启已经打开的tmux
tmux detach #离开tmux
ncdu #可是化的空间分析程序
glances #glances资源控制器 
multitail #multitail多重日志
cheat #笔记记录
mc #图形文本编辑器
echo "scale=2;[p#1 参数名 ]" | bc #计算器
git log --graph --decorate --pretty=oneline --abbrev-commit #美丽的git
svn log --revision {`date +%Y-%m-%d`}:HEAD #查看今天的svn log
free -m | awk  '{if(NR==2) print "freememory: " $3 " MB"}' #查看可用内存
ssh-keygen -t rsa -b 4096 -C "lijingqi93@gmail.com" #查看可用内存
tar -czvf [p#1 参数名].tar.gz  [p#2 参数名] #打包
nl [p#1 参数名] #逐行输出文本文件并显示行号

ifconfig | awk '/inet addr/ {print $2 }' | sed 's/.*://g' #显示机器的IPv4地址
hostname -I #查看ip地址
ip link show #获取所有MAC地址
echo $PATH | tr : \\n  #显示环境变量
cat /proc/meminfo #获取内存信息
netstat -nr | awk 'BEGIN {while ($3!="0.0.0.0") getline; print $2}'  #获取网关ip地址

ps -eo pmem,pid,comm --no-headers | sort -k1 -rn | head -10 #查看10个吃内存的进程
ps ax | grep -c [c]at #有多少运行的进程

history | awk '{print $2,$3}' | sed s/sudo// | awk '{print $1}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr #排序使用最多的命令
ethtool -S eth0 #eth0流量详情
sudo lsof -i :[p#1 参数名] #谁占用了端口
find . -name .DS_Store -exec rm {} \;  #删除所有 .DS_Store
du -sm /home/* | sort -nr | head -n 10 #寻找10大浪费资源的用户
du -hs */ | sort -hr | head #列出目录里的 前10大文件
dd if=/dev/zero of=test bs=64k count=16k conv=fdatasync #测试IO能力
sudo tcpdump -w - |pv -bert >/dev/null #查看网络吞吐量
dd if=/dev/zero of=/dev/null bs=1M count=32768 #内存和处理器的带宽