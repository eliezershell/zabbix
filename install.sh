#!/bin/bash

# Preparação do ambiente para subir o Zabbix 7.0

# Vou presumir que vocÊ já tenha um instancia ec2 com ubuntu na camada free tier

# Vamos abaixo preparar o ambiente

sudo apt update -y
sudo apt install mysql-client -y

# Instalação do docker
git clone https://github.com/eliezershell/docker.git
chmod +x ./docker/instalador_docker.sh; ./docker/instalador_docker.sh

# Subindo os containers
docker compose up -d

#config do banco
mysql -u root -p -h 127.0.0.1 #logar e sair do banco
mysql -u root -p -h 127.0.0.1 < init/base-zabbix.sql
