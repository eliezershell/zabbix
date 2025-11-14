#!/bin/bash

# Preparação do ambiente para subir o Zabbix 7.0

# Vou presumir que vocÊ já tenha um instancia ec2 com ubuntu na camada free tier

# Vamos abaixo preparar o ambiente

sudo apt update

# Instalação do docker
git clone https://github.com/eliezershell/docker.git
cd docker; chmod +x instalador_docker.sh; ./instalador_docker.sh
