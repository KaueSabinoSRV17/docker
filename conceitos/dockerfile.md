# Dockerfile

Com um Dockerfile, podemos descrever uma série de camadas que resultam no processo de um container
que desejamos criar. Para isso, escrevemos nele uma série de instruções.

- FROM <imagem base>: Imagem base que vai ter a coisas mais básicas que vamos usar (linguagens, SOs, etc).
- WORKDIR <diretorio desejado>: define um diretório de trabalho fora da raiz do container. (praticamente um mkdir seguido por um cd).
- COPY <conteúdo da sua máquina> <destino dentro do container>: Copia arquivos da sua máquina para um destino no container.
- RUN <comando desejado>: roda qualquer comando do Linux necessário (por exemplo, instalar dependências do projeto).
- ENTRYPOINT <comando que inicia processo>: define o comando que será rodado ao executar o container. É importante que o comando inicie um processo!

Segue um exemplo de `Dockerfile`:

```dockerfile
FROM node:14

WORKDIR /app

COPY package*.json .

RUN npm install

ENTRYPOINT npm start
```

## Parâmetros para Imagens/Containeres

Podemos definir parâmetros tanto para Imagens quanto para Containeres

### Instruções do Dockerfile

#### ARG

ARG vai definir um parâmetro apenas em tempo de build, ou seja... ( )

diretamente no `Dockerfile`...

```dockerfile
ARG <nome do argumento>=<valor desejado>
```

ou pela flag `--arg <nome do ARG exatamente igual está no Dockerfile>=<valor desejado>` do comando `build`

```dockerfile
ARG <nome do argumento, sem valor. Ele virá do comando build>
```
