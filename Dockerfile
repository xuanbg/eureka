# 使用的基础镜像
FROM hub.c.163.com/wuxukun/maven-aliyun:3-jdk-8

# 作者信息
MAINTAINER Brian "brian.xan@gmail.com"

ADD pom.xml /tmp/build/
ADD src /tmp/build/src

#构建应用
RUN cd /tmp/build && mvn clean package \
        && mv target/*.jar /app.jar \
        && cd / && rm -rf /tmp/build

VOLUME /tmp
EXPOSE 8761
ENTRYPOINT ["java","-jar","/app.jar"]