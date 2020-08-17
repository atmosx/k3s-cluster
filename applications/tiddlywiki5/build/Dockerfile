ARG tiddlywiki_version="5.1.13"
FROM arm32v7/node:alpine3.10
RUN apk update && \
    apk upgrade && \
    apk add bash
RUN npm install -g tiddlywiki@${tiddlywiki_version}
RUN mkdir /data
RUN chown nobody:nobody /data
USER nobody
EXPOSE 8080
WORKDIR /opt
COPY . .
ENTRYPOINT [ "/opt/entrypoint.sh" ]
