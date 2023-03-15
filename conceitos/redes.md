# Redes no Docker

Para que possamos fazer a comunicação entre muitos containeres, podemos usar as redes do Docker.

Existem três redes padrão no Docker: 

- bridge: a padrão gerenciada pelo docker.
- host: a padrão que representa o seu host.
- none: a rede quando o container não tem rede.

Todo container por padrão vai para a rede bridge, então eles tem sim alguma forma de se comunicar.

Com o `docker inspect <id do container>` podemos ver o Ip Adress de cada container.

Caso estivermos usando um terminal dentro de um container, e "pingar" o IP de outro container, ele deverá responder normalmente.
