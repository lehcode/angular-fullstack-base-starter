FROM mongo:latest

LABEL org.opencontainers.image.authors="Anton Repin <lehcode@gmail.com>"
LABEL org.opencontainers.image.copyright="Anton Repin <lehcode@gmail.com>"
LABEL org.opencontainers.image.description="MongoDB backend image"

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install curl wget apt-transport-https \
    && cp /etc/mongod.conf.orig /etc/mongod.conf \
    && sed -i 's/bindIp: 127\.0\.0\.1/bindIp: 0\.0\.0\.0/g' /etc/mongod.conf

#EXPOSE 27017:27017/tcp
#EXPOSE 27018:27018/tcp
#EXPOSE 27019:27019/tcp
