# Comandos

## Pull

Quando fazemos um `docker pull <imagem>` estamos fazendo o download da imagem em nossa máquina

## Run

Quando fazemos um `docker run <imagem>`, fazemos o download caso não tenhamos a imagem na máquina,
e rodamos um container a partir da imagem.

### Flags

- `-d`: roda o container sem travar o seu terminal.
- `-p` <porta do seu PC>:<porta do container>: mapeia uma porta do seu PC para uma porta do container.
- `-P`: mapeia uma porta aleatória do seu PC para uma fixa do container.

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
