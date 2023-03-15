# Publicando Imagens

Para publicar imagens construídas em nossa máquina, devemos ter uma conta em algum Registry.

O serviço de Registry mais comum é o Docker Hub.

Para que tudo dê certo ao publicar a imagem, devemos logar o docker com o nosso usuário criado no Docker Hub
e publicar apenas imagens que sigam o seguinte padrão: 

	<nome do seu usuário no Docker Hub>/<nome da imagem>:<tag (praticamente a versão)>

## Comandos

### Login

Faz o docker logar na sua conta no terminal.

	docker login

#### Flags

- `-u <seu usuário>`: Loga já determinando o seu usuário. Após isso é apenas pedido sua senha

### Tag

Copia uma imagem existente para outra com um nome diferente. Muito útil para poupar o tempo de buildar
novamente uma imagem apenas por quê ela não está com o nome correto

	docker tag <imagem com o nome errado> <novo nome (não renomea, e sim cria outra)>

### Push

Publica a Imagem, desde que o padrão esteja certo e que ele esteja de acordo com o Usuário logado com o `docker login`

	docker push <imagem com nome no padrão correto>
