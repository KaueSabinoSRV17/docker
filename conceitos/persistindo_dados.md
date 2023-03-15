# Persistindo Dados

O espaço de containeres e imagens são diferentes. Ao consultar o tamanho de um container, recém rodado
podemos ver que seu espaço é zero, mas seu espaço virtual não.

O espaço virtual é referente ao tamanho da imagem (que por sua vez é referente ao tamanho de todas as suas camadas).

O espaço do container é referente apenas ao que está em sua camada exclusiva de read/write. 
Caso nós adicionarmos arquivos ou instalar programas, seu espaço irá aumentar, e seu espaço virtual será a 
soma do espaço da imagem com o espaço do container.

Como já vímos, caso o container seja excluido, o seu conteúdo escrito é perdido. Caso seja necessário
persistir este conteúdo, usamos os volumes! Existem 3 tipos:

- bind-mount: espelhamos um local da nossa máquina em um local do container. Mudanças em um são efetuadas no outro, pelos 2 lados.
- volume: dados gerenciados pelo Docker.
- tmpfs-mount: local temporário.

## Bind Mount

Podemos definir um Bind Mount ao rodar um novo container:

	docker run -v <local da sua máquina>:<local do container>

**VALE LEMBRAR QUE A PASTA DEVE EXISITR NA SUA MÁQUINA**

## Volumes

Podemos criar um volume com `volume create`:

	docker volume create <nome do volume>

E depois rodar um container montado a ele:

	docker run -v <nome do volume>:<local do container> <imagem>

É possível rodar `docker run` sem criar o volume primeiro, assim ele será criado automaticamente.

Caso queiramos encontrar o local em que o docker realmente guarda esse conteúdo, estará em: 
`/var/lib/docker/volumes/<nome do volume>/_data` (Esteja como usuário root para ver!).

## TMPFS

Este tipo só funciona no Linux. Ele vai guardar o conteúdo apenas na memória do Host:

	docker run -v --tmpfs=<local do container> <imagem>

É útil para questões de segurança.
