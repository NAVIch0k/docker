FROM node:18.12.1-alpine
WORKDIR /app
COPY . .
RUN yarn
RUN yarn build
EXPOSE 3000

CMD ["yarn", "start"]