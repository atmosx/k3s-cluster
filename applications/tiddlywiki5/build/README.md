# Deployment

Build:
```
docker build -t atmosx/arm32v7-tiddlywikiv5.1.13
```

Run:
```
docker run --rm -it -e WIKI_NAME=test -p 8080:8080 test
```
