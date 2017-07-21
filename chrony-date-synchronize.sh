#!/bin/bash

#------------------------------------------------------------------------------#
# centos7通过chrony同步时间脚本
# 设置系统时间为中国时区并启用时间同步
#------------------------------------------------------------------------------#

echo ============chrony-date-synchronize start============
echo 安装 chrony;
yum install chrony;

echo 启用 chrony
systemctl start chronyd;
systemctl enable chronyd;

echo 设置中国时区
timedatectl set-timezone Asia/Shanghai;

echo 启用NTP同步
timedatectl set-ntp yes;
echo ============chrony-date-synchronize end============
