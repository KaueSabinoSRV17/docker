# Containeraização e Virtualização

Quando temos uma aplicação em produção com conflitos de porta (app 1, app 2 e servidor, por exemplo, expondo a porta 8080)
ou quando temos que gerar dependências destes recursos e apps, temos um problema, que tem 3 soluções: 

- Usar mais máquinas: muito caro.
- Usar VMs (Virtualiçação) dentro de uma máquina: mais barato, porém, custoso no âmbito computacional.
- Usar Containers: mesmo efeito de Virtualização, mas não virtualizando o SO. Assim, é muito mais leve.

## Como Containers ficam isolados

### Namespaces

Os containeres ficam isolados da máquina host das seguintes formas.

- PID: Isolamento dos processos dentro do container.
- NET: Isolamento das interfaces de rede.
- IPC: Isolamento de comunicação entre processos e memória compartilhada.
- MNT: Isolamento de sistema de arquivos e pontos de montagem.
- UTS: Isolamento do Kernel. Age como se o container fosse outro Host.

Portanto, containers não precisam de SO, pois eles podem acessar diretamente o Kernel do host, pulando o SO
que está enter os 2.

Para que um container fique realmente em execução, deve ser rodado um comando que gera um processo que irá 
permanecer. Enquanto esse processo estiver de pé, o container também estará.

## Expondo partes do Container

As vezes, nem tudo do container deve estar isolado. Provavelmente vamos expor as portas de um container
e mapear estas portas para as portas da nossa máquina.

## Comandos

## Pull

Quando fazemos um `docker pull <imagem>` estamos fazendo o download da imagem em nossa máquina

## Run

Quando fazemos um `docker run <imagem>`, fazemos o download caso não tenhamos a imagem na máquina,
e rodamos um container a partir da imagem.

### Flags

- `-d`: roda o container sem travar o seu terminal.
- `-p` <porta do seu PC>:<porta do container>: mapeia uma porta do seu PC para uma porta do container.
- `-P`: mapeia uma porta aleatória do seu PC para uma fixa do container.
- `-v <volume Docker ou local da sua máquina>:<local do container>`: estipula um volume para o container a ser rodado.
- `--network`: define uma rede para o container.
- `--name`: digine um nome para o container. Útil ao usar uma rede de driver `bridge` customizada, pois será possível fazer a comunicação pelo nome.

## Ps

Mostra os containers sendo executados. Caso queiramos ver todos, até os não executados, passamos -a como flag

## Stop

Para a Execução de um container. Todos os processos que estavam rodando serão resetados

	docker stop <id ou nome do container>

## Start

Roda de novo um container. Todos os processos que estavam rodando serão resetados

	docker start <id ou nome do container>

## Pause

Pausa um container. Os processos não são resetados

	docker pause <id ou nome do container>

## Unpause

Resume um container pausado. Os processos não são resetados

	docker unpause <id ou nome do container> 

## Rm

Apaga um container que não está sendo mais executado

	docker rm <id ou nome do container>

### Flags

- `--force`: força a exclusão. Útil para parar um container e remove-lo em seguida

## Exec

Roda um comando em um container que está sendo executado

	docker exec <id ou nome do container> <comando a ser rodado> 

Caso queiramos entrar em um terminal dentro deste container, passamos antes a flag `-it`

	docker exec -it <id ou nome do container> <bash ou sh> 

## Port

Demonstra como está o mapeamento de portas de um container específico

	docker port <id ou nome do container>
