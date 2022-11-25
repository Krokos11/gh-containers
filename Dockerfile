FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.jhomav5.mongodb.net
ENV MONGODB_USERNAME admin
ENV MONGODB_PASSWORD EYrvPhzZTjhu0g6Y

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]