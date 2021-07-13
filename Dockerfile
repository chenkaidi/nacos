FROM nacos/nacos-server:1.4.0
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
ENV MODE=standalone 
ENV JVM_XMS=3500M
ENV JVM_XMX=3500M
ENV SPRING_DATASOURCE_PLATFORM=mysql
ENV MYSQL_SERVICE_HOST=192.168.0.1
ENV MYSQL_SERVICE_DB_NAME=nacos_config
ENV MYSQL_SERVICE_USER=root
ENV MYSQL_SERVICE_PASSWORD=p@ssw0rd
CMD ["bin/docker-startup.sh"]
