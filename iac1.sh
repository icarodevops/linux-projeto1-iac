#!/bin/bash

echo "Criando diretórios dos setores da empresa"

mkdir /adm
mkdir /sec
mkdir /ven
mkdir /publico

echo "Diretórios criados com sucesso"

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Grupos criados com sucesso"

echo "Criando usuários de acesso ao servidor"

useradd carlos -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd sebatiana -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC

echo "Usuários criados com sucesso"

echo "Especificando o dono dos diretórios"

chown root:GRP_ADM /adm/
chown root:GRP_SEC /sec/
chown root:GRP_VEN /ven/

echo "Especificação configurada  com sucesso"

echo "Configurando permissões de acesso"

chmod 770 /adm  
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "Configuração feita com sucesso"

