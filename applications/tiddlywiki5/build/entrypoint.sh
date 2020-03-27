#!/bin/bash

if [[ -z "${WIKI_NAME+x}" ]]; then
      echo "'WIKI_NAME' environment variable is empty!"
      exit 1
fi

if [[ -d /data/${WIKI_NAME} ]]; then
  exec tiddlywiki "/data/${WIKI_NAME}" --listen host=0.0.0.0
else
  tiddlywiki "/data/${WIKI_NAME}" --init server
  exec tiddlywiki "/data/${WIKI_NAME}" --listen host=0.0.0.0
fi
