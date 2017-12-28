# 使用的基础镜像
FROM my/ubuntu:jre8

# 作者信息
MAINTAINER Brian "brian.xan@gmail.com"

ADD target/*.jar /usr/local/apin/app.jar

EXPOSE 8761
ENTRYPOINT ["/usr/local/apin/start.sh"]