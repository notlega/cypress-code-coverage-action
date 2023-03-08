FROM node:16

COPY . .

RUN npm install --production

RUN npm run build

ENTRYPOINT ["node", "/dist/index.js"]