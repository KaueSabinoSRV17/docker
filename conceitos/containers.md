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
