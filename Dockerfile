#FROM node:alpine
FROM public.ecr.aws/docker/library/node:alpine

WORKDIR /nodejs-docker-aws-ecs

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]