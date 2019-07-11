# Computsal

Computsal is a famous soccer competition in University of Brasilia organized by computer science academic center.

It happens every semester since 2010 with teams from different courses. 

Computsal was managed using papers until 2019 when I decided to create this app.

Feel free to improve anything you want, the idea of this project is to keep a good platform to organize this amazing competition.

## High level design

<p align="center">
  <img src="https://i.imgur.com/hRZwmfi.png"/>
  <br/>
</p>

Explicar cada modulo do design 

Executar local : git clone --recurse-submodules

se ja tiver clonado : git pull --recurse-submodules

Para modificar a API : 

Primeiro precisamos abrir o servidor SQL para isso vamos:

    docker build -t nome_da_imagem caminho/para/dockerfile

    docker run --name nome_do_container -d --network="host" nome_da_imagem

    // docker exec -it nome_do_container_rodando /bin/bash

Segundo abrir o servidor da API :

    docker build -t nome_da_imagem caminho/para/dockerfile

    docker run --name nome_do_container -d --network="host" nome_da_imagem

    // docker exec -it nome_do_container_rodando /bin/bash

Terceiro abrir o servidor Web :

    npm start

    // falta implementar o docker aqui

