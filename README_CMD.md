# comando para criação do container 

docker run --restart always --name glpi -p 80:80 -e TIMEZONE=America/Sao_Paulo -ti -v /root/vdataglpi:/var/www/html/glpi renato130182/glpi:1.0

docker run --restart always --name mysqldb -p 3306:3306  -e MYSQL_ROOT_PASSWORD=root --mount type=bind,src=/path-on-host-machine/my.cnf,dst=/etc/my.cnf --mount type=bind,src=/path-on-host-machine/datadir,dst=/var/lib/mysql -ti mysql:5.7.23
