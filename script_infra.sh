#!/bin/bash

echo "Criando arquivos de configuração e/ou diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!!"

echo "Criando usuários que terão acesso ao servidor:"

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 qwerty123) -G GRP_SEC

echo "Usuários criados com sucesso!"

echo "Definindo donos dos grupos:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo permissões dos diretórios:"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Arquivos de configuração e/ou diretórios criados com sucesso!"