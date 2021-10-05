# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/main/containers/javascript-node/.devcontainer/base.Dockerfile

# [Choice] Node.js version: 16, 14, 12, 16-bullseye, 14-bullseye, 12-bullseye, 16-buster, 14-buster, 12-buster
ARG VARIANT=16-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:${VARIANT}

# Docker-from-Docker Install Script
# https://github.com/microsoft/vscode-dev-containers/blob/main/script-library/docs/docker.md
COPY vscode-dev-containers/script-library/docker-debian.sh /tmp/library-scripts/docker-debian.sh
ENV DOCKER_BUILDKIT=1
RUN apt-get update && bash /tmp/library-scripts/docker-debian.sh
ENTRYPOINT ["/usr/local/share/docker-init.sh"]
CMD ["sleep", "infinity"]

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment if you want to install an additional version of node using nvm
# ARG EXTRA_NODE_VERSION=10
# RUN su node -c "source /usr/local/share/nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"

# [Optional] Uncomment if you want to install more global node modules
# RUN su node -c "npm install -g <your-package-list-here>"
