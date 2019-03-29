#On choisit une debian
FROM debian:latest

MAINTAINER DiouxX "github@diouxx.be"

#Ne pas poser de question à l'installation
ENV DEBIAN_FRONTEND noninteractive

#Installation d'apache et de php5 avec extension
RUN apt update \
&& apt -y upgrade \
&& apt -y install \
apache2 \
php \
php-mysql \
php-ldap \
php-xmlrpc \
php-imap \
curl \
php-curl \
php-gd \
php-mbstring \
php-xml \
php-apcu-bc \
php-cas \
cron \
wget \
jq \
git

#Copie et execution du script pour l'installation et l'initialisation de GLPI

RUN git clone https://github.com/renaro130182/docker-glpi
RUN chmod +x /docker-glpi/glpi-start.sh
ENTRYPOINT ["/docker-glpi/glpi-start.sh"]

#Exposition des ports
EXPOSE 80 443
