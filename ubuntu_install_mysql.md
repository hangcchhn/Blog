# # Ubuntu Install MySQL



mysql-server_5.7.9-1ubuntu14.04_amd64.deb-bundle.tar

tar -xvf mysql-server_5.7.9-1ubuntu14.04_amd64.deb-bundle.tar


grant all privileges on *.* to 'root'@'%' identified by 'chench' with grant option;

flush privileges;

docker commit ubuntu14.04 cch/ubuntu_mysql

docker run -it -p 3306:3306/tcp -e MYSQL_ROOT_PASSWORD=chench --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql


docker run -it -p 3306:3306/tcp --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql


docker run -it -p 33306:3306/tcp --expose 3306/tcp --name ubuntu_mysql cch/ubuntu_mysql