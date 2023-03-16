# Rodando muitos Containeres de Uma Vez

Quando precisamos rodar diversos containeres de uma vez, teremos um trabalho muito manual. Além disso,
serão muitas flags diferentes para rodar, o que torna cada comando extenso e de difícil manutenção

É possível escrever bash scripts que automatizam a subida de cada container, mas existe uma solução
oficial mais eficiente: o Docker Compose.

O Docker Compose é uma ferramenta que busca guardar todos as diferentes flags que definem múltiplos
containeres em apenas um arquivo, que poderá ser gerenciado com apenas um comando.

## docker-compose.yml

O arquivo em questão deverá sempre se chamar `docker-compose.yml` ou `docker-compose.yaml`.

Exemplo de arquivo, referente a app mongo+node da Alura: 
```yaml
version: "3.9"

services:
  alurabooks:
    image: aluradocker/alura-books:1.0
    ports:
      - 3000:3000
    networks:
      - mongo_node

  meu-mongo:
    image: mongo:4.4.6
    networks:
      - mongo_node

networks:
  mongo_node:
    driver: bridge
```

### Instruções

- `version "<número>"`: Define a versão do .yaml.
- `services`: define a lista de containeres a serem rodados.
- `<nome do container>`: filho imediato de `services`. define um container e um nome qualquer a ele.
- `image ou build: <imagem ou caminho a uma pasta com Dockerfile>`: define a imagem que irá rodar o container.
- `ports`: define a lista de portas Ex: `- 3000:3000`.
- `networks`: define a lista de redes.

## Comandos

### Docker Compose ou docker-compose

É o pai de todos os comandos `compose`. Sozinho imprime no terminal as opções possíveis.
Para que o Docker Compose funcione, é necessário estar em uma pasta com um arquivo `docker-compose.yml`.

	docker compose

### Up

Vai subir todos os containeres do `docker-compose.yml`

	docker compose up

#### Flags

- `-d`: Roda sem travar o terminal.

### Down

Vai Remover todos os containeres do `docker-compose.yml`

	docker compose down

### Ps

Lista apenas containeres do `docker-compose.yml` rodando atualmente.

	docker compose ps
