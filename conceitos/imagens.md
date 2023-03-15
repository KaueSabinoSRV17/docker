# Imagens

Está estabelecido que containeres são executados a partir de imagens. Agora, o que são imagens?

Uma imagem é um conjunto de camadas, que quando empilhadas, descrevem todos os passos para que o processo
do container consiga rodar de forma confiável e isolada.

Podemos apenas ler, e não escrever, uma camada.

Porém, como podemos executar por exemplo o Ubuntu, e criar arquivos nele?
Porquê os Containeres são apenas uma camada extra das imagens, no caso uma com leitura e escrita.
Por isso, eles são tão performáticos. Tudo o que os define estão nas camadas read only, sendo apenas o seu 
processo algo read/write

## Camadas

Cada camada pode ser descrita como um simples comando a ser executado!

As camadas são armazenadas no host da sua máquina e são cacheadas. Por isso há uma performance tão 
otimizada ao baixar e construir imagens com camadas repetidas: Elas não são executadas e instaladas novamente!

## Comandos

### Pull

Quando fazemos um `docker pull <imagem>` estamos fazendo o download da imagem em nossa máquina

### Images

Lista as imagens na sua máquina.

	docker images

### Inspect

Imprime no terminal um JSON extenso com diversas informações sobre a imagem

	docker inspect <id da imagem>

### History

Imprime no terminal todas as camadas da imagem

	docker history <id da imagem>
