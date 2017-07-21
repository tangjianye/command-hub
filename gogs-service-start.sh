#!/bin/bash

#------------------------------------------------------------------------------#
# 重启服务
# gogs服务（切换git用户后不行）
#------------------------------------------------------------------------------#

echo ======================Gogs server======================
# 切换到git用户
# su git;

# 启动gogs服务
gogsDir="/home/git/gogs"
if [[ -d "$gogsDir" ]]; then
  echo "$gogsDir exists, start gogs server!"
  ./gogs web;
else
  echo "$gogsDir not exists."
fi

echo ======================Commond End======================
