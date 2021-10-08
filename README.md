# dev-containers

A repository of development container definitions for [coajs](https://github.com/coajs)

Learn more from: https://github.com/microsoft/vscode-dev-containers

## javascript-node

_Develop Node.js based applications. Includes Node.js, eslint, nvm, and yarn._

| Metadata                          | Value                                                                                                                                                                            |
| --------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| _Definition type_                 | Dockerfile                                                                                                                                                                       |
| _Published image_                 | ghcr.io/coajs/javascript-node                                                                                                                                                    |
| _Available image variants_        | 12 / 12-buster, 14 / 14-buster, 16 / 16-buster, 12-bullseye, 14-bullseye, 16-bullseye ([full list](https://mcr.microsoft.com/v2/vscode/devcontainers/javascript-node/tags/list)) |
| _Published image architecture(s)_ | x86-64, arm64/aarch64 for `bullseye` variants                                                                                                                                    |

See [detail](https://github.com/coajs/dev-containers/pkgs/container/javascript-node) for information on the contents of published images and here for a complete list of [available tags](https://github.com/coajs/dev-containers/pkgs/container/javascript-node/versions)

Example of `devcontainer.json`

```jsonc
// For format details, see https://aka.ms/devcontainer.json.
{
  "name": "coajs",
  "image": "ghrc.io/coajs/javascript-node",
  "runArgs": ["--init"],
  "remoteUser": "node",
  "mounts": [
    "source=container-share-cache,target=/usr/local/share/.cache,type=volume"
  ]
}
```

Learn more from:

- javascript-node: https://github.com/microsoft/vscode-dev-containers/tree/main/containers/javascript-node

## javascript-node-desktop

Adds a lightweight Fluxbox based desktop to the container that can be accessed using a VNC viewer or the web. UI-based commands executed from the built in VS code terminal will open on the desktop automatically.

Based on `ghcr.io/coajs/javascript-node`

See [detail](https://github.com/coajs/dev-containers/pkgs/container/javascript-node-desktop) for information on the contents of published images and here for a complete list of [available tags](https://github.com/coajs/dev-containers/pkgs/container/javascript-node-desktop/versions)

Example of `devcontainer.json`

```jsonc
// For format details, see https://aka.ms/devcontainer.json.
{
  "name": "coajs",
  "image": "ghrc.io/coajs/javascript-node-desktop",
  "runArgs": ["--init", "--security-opt", "seccomp=unconfined"],
  "forwardPorts": [6080, 5901],
  "overrideCommand": false,
  "mounts": [
    "source=container-share-cache,target=/usr/local/share/.cache,type=volume"
  ]
}
```

Learn more from:

- desktop-lite: https://github.com/microsoft/vscode-dev-containers/blob/main/script-library/docs/desktop-lite.md

## javascript-node-docker

Access your host's Docker install from inside a dev container. Installs Docker extension in the container along with needed CLIs.

Based on ghcr.io/coajs/javascript-node

See [detail](https://github.com/coajs/dev-containers/pkgs/container/javascript-node-docker) for information on the contents of published images and here for a complete list of [available tags](https://github.com/coajs/dev-containers/pkgs/container/javascript-node-docker/versions)

Example of `devcontainer.json`

```jsonc
// For format details, see https://aka.ms/devcontainer.json.
{
  "name": "coajs",
  "image": "ghrc.io/coajs/javascript-node-docker",
  "runArgs": ["--init"],
  "overrideCommand": false,
  "mounts": [
    "source=container-share-cache,target=/usr/local/share/.cache,type=volume",
    "source=/var/run/docker.sock,target=/var/run/docker-host.sock,type=bind"
  ]
}
```

Learn more from:

- docker-from-docker: https://github.com/microsoft/vscode-dev-containers/tree/main/containers/docker-from-docker
