#!/bin/bash

echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Servidor atualizado com sucesso!"

echo "Instalando servidor Web Apache2..."
apt-get install apache2 -y

eho "Apache2 instalado com sucesso!"

echo "Instalando unzip..."
apt-get install unzip -y
echo "Unzip instalado com sucesso!"

echo "Baixando os arquivos da aplicação..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Arquivos baixados com sucesso na pasta /tmp"

echo "Descompactando arquivos..."
unzip main.zip

echo "Arquivos descompactados com sucesso!"

cd linux-site-dio-main

echo "Copiando os arquivos para a pasta /var/www/html..."
cp -R * /var/www/html/

echo "Arquivos copiados com sucesso!"

echo "Script finalizado! Seu servidor está no ar e sua página também!!"

