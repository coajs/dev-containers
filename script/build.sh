# 这个文件以后会自动生成，由 Github Action 执行

# build javascript-node-docker 16
docker build -f containers/javascript-node-docker/Dockerfile -t javascript-node-docker-16 --build-arg VARIANT=16-bullseye .
docker image tag javascript-node-docker-16 ghcr.io/coajs/javascript-node-docker
docker image tag javascript-node-docker-16 ghcr.io/coajs/javascript-node-docker:16
docker image tag javascript-node-docker-16 ghcr.io/coajs/javascript-node-docker:16-bullseye

# build javascript-node-docker 14
docker build -f containers/javascript-node-docker/Dockerfile -t javascript-node-docker-14 --build-arg VARIANT=14-bullseye .
docker image tag javascript-node-docker-16 ghcr.io/coajs/javascript-node-docker:14
docker image tag javascript-node-docker-16 ghcr.io/coajs/javascript-node-docker:14-bullseye

# build javascript-node-docker 12
docker build -f containers/javascript-node-docker/Dockerfile -t javascript-node-docker-12 --build-arg VARIANT=12-bullseye .
docker image tag javascript-node-docker-16 ghcr.io/coajs/javascript-node-docker:12
docker image tag javascript-node-docker-16 ghcr.io/coajs/javascript-node-docker:12-bullseye