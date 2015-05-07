# 镜像制作以ubuntu 14.04操作系统为基础
FROM ubuntu:14.04
MAINTAINER sule.n@live.cn
# 国内的Ubuntu镜像源
ADD sources.list_aliyun /etc/apt/sources.list
# 安装依赖库
RUN apt-get update && apt-get install -y lsb-core
RUN apt-get install -y apache2
# 部署照片墙
ADD photoshow /var/www