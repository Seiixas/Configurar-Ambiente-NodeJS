# Script que configura um ambiente NodeJS
> ShellScript criado para me auxiliar em estudos na Rocketseat, mas deixo disponível para auxiliar quem mais quiser :).  A intenção é atualizar o script ao decorrer do curso que estou fazendo (GoBarber).

### 1. Sobre
O objetivo desse script é adicionar todos as dependências básicas para a criação de uma API REST utilizando o NodeJS seguindo cursos da [**Rocketseat**][1]. Com isso, serão instaladas várias dependências essenciais e a configuração de pastas de acordo com o modelo MVC, além dos arquivos primários como ```app.js```, ``` index.js ``` e ```routes.js ```.

### 1.5. Disclaimer
O intuito desse script não é diminuir a importância de aprender sobre as dependências, modelos MVC e outros, mas sim uma forma de facilitar a criação do ambiente de desenvolvimento para as pessoas que já têm um conhecimento prévio sobre as tecnologias aplicadas pelo script.

### 2. Utilização

##### 2.1. Requisitos
1. NodeJS e NPM instalados.
2. Yarn instalado.
3. Sistema operacional com terminal baseado em UNIX.
Obs: Testei somente no macOS Catalina.
4. Execute o script em pastas sem acentuação, espaços e/ou caracteres especiais.

##### 2.2. Uso
- Copie o script ```init.sh``` para raíz da pasta onde o projeto será criado.
- Faça o executável pelo comando ```chmod 775 init.sh```.
- Execute-o pelo comando ```sh init.sh```.
- Veja a mágica acontecer.

##### 2.3. Dependências instaladas pelo script:
- Express
- Nodemon
- Sucrase
- ESlint
- Prettier
- Sequelize
- Bcryptjs
- Jsonwebtoken (JWT)
- PG e PG-HStore

### 3. Pós-execução
Antes de sairmos codando, é necessário adicionar algumas configurações manualmente em seu projeto NodeJS e VSCode.

##### 3.1. Configurando o Nodemon
Adicione o seguinte código em seu arquivo ``` package.json ``` após as devDependencies:
```
"scripts": {
    "dev": "nodemon src/server.js"
  },
``` 
Prontinho, agora para iniciar o servidor é só executar normalmente o comando ``` yarn dev ```

##### 3.2. Configurando o VSCode (opcional)
Permita que o ESLint corriga o código automaticamente ao salvar um arquivo .js. Para isso, abra o arquivo ``` settings.json ``` do seu Visual Studio Code (VSCode) e adicione:
```
"editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },

"eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
]
``` 

[1]: https://rocketseat.com.br/
