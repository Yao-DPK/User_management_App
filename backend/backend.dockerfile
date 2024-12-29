FROM node

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY prisma ./prisma

RUN npx prisma generate

COPY . .

EXPOSE 5000

CMD ["node", "index.js"]