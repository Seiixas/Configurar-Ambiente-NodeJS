# Inicia projeto NodeJS
yarn init -y;

# Cria diretórios da arquitetura MVC
mkdir src;
mkdir src/app;
mkdir src/app/controllers;
mkdir src/app/middlewares;
mkdir src/app/models;
mkdir src/database;
mkdir src/database/seeds;
mkdir src/database/migrations;
mkdir src/config;

# Adiciona as dependências de desenvolvimento e do projeto

yarn add nodemon -D; # Autoreiniciar o servidor Node ao mudar o código.
yarn add sucrase -D; # Usar nova sintaxe JS (import/export).
yarn add eslint -D; # Padronizar o código.
yarn add prettier eslint-config-prettier eslint-plugin-prettier -D; # Deixar o código mais clean.
yarn add sequelize-cli -D; # Executar migrations e outros comandos Sequelize.
yarn add express; # Servidor Express.
yarn add pg; # Necessário para funcionamento do Sequelize.
yarn add pg-hstore; # Necessário para funcionamento do Sequelize.
yarn add sequelize; # Manipular bancos de dados via javascript.
yarn add bcryptjs; # Gerar hash (bom para senhas).
yarn add jsonwebtoken; # Gerar tokens de autenticação.
clear;

# Inicia o Eslint para configuração inicial
yarn eslint --init;
# Apaga arquivo do npm
rm package-lock.json;
# Sincroniza a nova dependência com o yarn
yarn;
clear;

# Configura o ESlint com Prettier
echo "module.exports = {
  env: {
    es2021: true,
    node: true,
  },
  plugins: ['prettier'],
  extends: ['airbnb-base', 'prettier'],
  parserOptions: {
    ecmaVersion: 12,
    sourceType: 'module',
  },
  rules: {
    'prettier/prettier': 'error',
    'class-methods-use-this': 'off',
    'no-param-reassign': 'off',
    camelcase: 'off',
    'no-unused-vars': ['error', { argsIgnorePattern: 'next' }],
  },
};" > .eslintrc.js

# Configura o Sucrase para funcionar com o Nodemon
echo '{
  "execMap": {
    "js": "node -r sucrase/register"
  }
}' > nodemon.json;

# Configura o Prettier para usar aspas simples e vírgula após um parâmetro json
echo '{
  "singleQuote": true,
  "trailingComma": "es5"
}' > .prettierrc;

# Configura o diretório do modelo MVC
echo "const { resolve } = require('path');

module.exports = {
  config: resolve(__dirname, 'src', 'config', 'database.js'),
  'models-path': resolve(__dirname, 'src', 'app', 'models'),
  'migrations-path': resolve(__dirname, 'src', 'database', 'migrations'),
  'seeders-path': resolve(__dirname, 'src', 'database', 'seeds'),
};" > .sequelizerc;
clear;

# Cria arquivos principais de um projeto NodeJS
cd src;
echo '' > app.js;
echo '' > routes.js;
echo '' > server.js;

echo 'Adicione manualmente o código 

  "scripts": {
    "dev": "nodemon src/server.js"
  },

No arquivo package.json. :)';