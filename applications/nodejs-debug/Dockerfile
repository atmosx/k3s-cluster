FROM arm64v8/node:buster-slim

COPY . .

RUN npm install

EXPOSE 8080
CMD [ "node", "app.js" ]
