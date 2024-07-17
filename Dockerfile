# imagem base
FROM node:lts-alpine

# diretório de trabalho dentro do contêiner
WORKDIR /app

# copia os arquivos package.json
COPY package*.json ./

# instala as dependências
RUN npm install

# copia o código da aplicação para o contêiner
COPY . .

# permissão de execução para o vue-cli-service globalmente
RUN npm install -g @vue/cli-service && chmod +x /usr/local/bin/vue-cli-service

# expõe a porta necessária
EXPOSE 3000

# executa a aplicação
CMD ["npm", "run", "serve"]
