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

# expõe a porta necessária
EXPOSE 5000

# executa a aplicação
CMD ["npm", "start"]
