#!/bin/bash
# Created By:      ZhongZiyuan <zzy.albert@163.com>
# Created Time:    2016-04-14 15:41:43
# Modified Time:   2016-04-14 16:13:01

ip_prefix=192.168.228.
ip_begin=4
ip_end=28
user=root
pwd=111111

rm -rf ~/.ssh/authorized_keys 2>/dev/null

cmd='./get_pub_key.exp'
for (( i=$ip_begin;i<$ip_end+1;i++));do
    ip=$ip_prefix$i
    echo "============     Getting publish key from $ip     ================"
    $cmd $ip $user $pwd | grep ssh-rsa >> ~/.ssh/authorized_keys
done

chmod 600 ~/.ssh/authorized_keys

cmd='./send_pub_key.exp'
for (( i=$ip_begin;i<$ip_end+1;i++));do
    echo "============     Sending publish key to $ip     ================"
    ip=$ip_prefix$i
    $cmd $ip $user $pwd
done
