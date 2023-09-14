# Explicação
Esse repositório faz parte de um desafio de conclusão de módulo sobre Docker do curso FullCycle. O desafio é fazer uma imagem de um projeto Go com menos de 2mb.

Essa imagem ao ser rodada simplesmente irá mostrar:

```shell
$ docker run --rm --name vasco antunesgabriel/fullcycle-go-challege
FullCycle rocks
```

Imagem Go: https://hub.docker.com/repository/docker/antunesgabriel/fullcycle-go-challege


Tamanho:
```shell
$ docker images | grep antunesgabriel/fullcycle-go-challege
antunesgabriel/fullcycle-go-challege   latest    19a40d273e2b   15 minutes ago      1.17MB
```
