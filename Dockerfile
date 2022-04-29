FROM node

WORKDIR /app

# Что бы закешировать папку node_modules сначала копируем package.json
COPY package.json .
# После чего выполняем install
RUN npm install
#  b только затем копируем файлы
COPY . .

EXPOSE 3000

CMD ["npm", "start"]


