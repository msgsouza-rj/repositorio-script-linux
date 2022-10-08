#!/bin/bash

echo "Criando diretórios..."

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Criando grupos de usuários..."

groupadd GRP-ADM
groupadd GRP-VEN
groupadd GRP-SEC

echo "Criando usuários Grupo ADM..."

useradd carlos -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-ADM
useradd maria -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-ADM
useradd joao -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-ADM

echo "Criando usuários Grupo VEN..."

useradd debora -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-VEN

echo "Criando usuários Grupo SEC..."

useradd josefina -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-SEC
useradd regerio -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP-SEC

echo "Definindo propriétarios e permissões dos diretórios..."

chown root:GRP-ADM /adm
chown root:GRP-VEN /ven
chown root:GRP-SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim de execução!"
