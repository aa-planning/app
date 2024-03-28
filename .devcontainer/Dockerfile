ARG DEBIAN_FRONTEND=noninteractive
ARG VARIANT=bullseye

FROM mcr.microsoft.com/vscode/devcontainers/base:${VARIANT}

# Install packages needed for deployment
RUN apt-get update -qq && \
  apt-get install --no-install-recommends -y postgresql-client build-essential curl git libpq-dev libvips node-gyp pkg-config python-is-python3 dos2unix

# Install JavaScript dependencies
ARG NODE_VERSION=20.10.0
ARG YARN_VERSION=1.22.21
ENV PATH=/usr/local/node/bin:$PATH
RUN curl -sL https://github.com/nodenv/node-build/archive/master.tar.gz | tar xz -C /tmp/ && \
  /tmp/node-build-master/bin/node-build "${NODE_VERSION}" /usr/local/node && \
  npm install -g yarn@$YARN_VERSION && \
  rm -rf /tmp/node-build-master

# Install rbenv and ruby
USER vscode