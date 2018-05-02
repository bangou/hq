#!/bin/bash
echo "天文望远镜专版"
echo "请输入你的内网ip" 
read -p "内网ip： " ip
rm -rf /root/libpcap-1.8.1/bangou
cd libpcap-1.8.1/
git clone https://github.com/bangou/bangou.git
cd bangou/
npm i
npm i -g pino
npm install -g forever
forever start index.js sniff eth0 $ip | pino
echo "重装完毕"