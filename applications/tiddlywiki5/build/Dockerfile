ARG tiddlywiki_version="5.1.13"
FROM arm32v7/node:alpine3.10
RUN apk update && \
    apk upgrade && \
    apk add bash
RUN npm install -g tiddlywiki@${tiddlywiki_version}
RUN mkdir /data
RUN addgroup -g 1001 tuser && \
    adduser -D -u 1001 -G tuser tuser
RUN chown tuser:tuser /data
USER tuser
EXPOSE 8080
WORKDIR /opt
COPY . .
ENTRYPOINT [ "/opt/entrypoint.sh" ]
