# Redes no Docker

Para que possamos fazer a comunicação entre muitos containeres, podemos usar as redes do Docker.

Existem três redes padrão no Docker: 

- bridge: a padrão gerenciada pelo docker.
- host: a padrão que representa o seu host. (usando este driver, não haverá difença entre a rede do Host e a rede do Container).
- none: a rede a ser usada quando o container não tem rede.

Cada uma utiliza o driver com o respectivo nome. No caso, é o driver

Todo container por padrão vai para a rede bridge, então eles tem sim alguma forma de se comunicar.

Com o `docker inspect <id do container>` podemos ver o Ip Adress de cada container.

Caso estivermos usando um terminal dentro de um container, e "pingar" o IP de outro container, ele deverá responder normalmente.

Para que possamos referenciar containeres na rede pelo nome, devemos criar uma rede própria, que usa o driver `bridge`.

## Comandos

### Create

Vai criar uma nova rede, idealmente use o driver `bridge`:

	docker network create <nome da rede>

#### Flags

- `--driver=<bridge, host ou none>`: Define o driver a ser usado.
