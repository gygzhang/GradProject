#删除所有关闭的容器：

docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm

#删除所有dangling镜像（即无tag的镜像）：

docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
