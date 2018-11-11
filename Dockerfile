FROM alpine:3.7
RUN apk add --no-cache \
  bash \
  curl \
  git \
  openssh-client \
  bind-tools \
  jq \
  openssl

RUN mkdir -p ~/.ssh \
  && chmod 700 ~/.ssh \
  && echo -e 'Host github.com\n  StrictHostKeyChecking no' > ~/.ssh/config

