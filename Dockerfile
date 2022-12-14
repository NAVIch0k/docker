FROM node:18.12.1-alpine
WORKDIR /app
COPY package.json /app/
RUN yarn
COPY . .
RUN yarn build
EXPOSE 3000

CMD ["yarn", "start"]