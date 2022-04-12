FROM node

WORKDIR /app

COPY ./package.json ./
RUN yarn install

COPY . .
RUN yarn build

RUN yarn add serve

EXPOSE 3000
CMD [ "yarn", "serve", "-s", "build" ]
