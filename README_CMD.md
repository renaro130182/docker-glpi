# comando para criação do container 

docker run --restart always --name glpi -p 80:80 -e TIMEZONE=America/Sao_Paulo -ti -v /root/vdataglpi:/var/www/html/glpi renato130182/glpi:1.0
