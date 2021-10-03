# conversao-peso## Conversor de temperatura

### Requisitos
 -  Docker instalado

### Execução do aplicativo
 - Em um terminal, siga os seguintes passos e substitua o termo <image_name> pelo nome da imagem de sua preferência
 - Realize o build da imagem através do comando
 ```
  docker build -t <image_name> . 
 ```
 - Execute a imagem
 ```
 docker run --rm --name converter-app -p 8080:80 <image_name>
 ```
### Encerramento do aplicativo

Para finalizar a execução do aplicativo, execute o seguinte comando em um terminal:
```
docker container kill converter-app
```
