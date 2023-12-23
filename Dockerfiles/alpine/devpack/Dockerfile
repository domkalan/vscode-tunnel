FROM domkalan/vscode-tunnel:base-alpine

# build essential
RUN apk add alpine-sdk

# nodejs
RUN apk add nodejs npm && \
    npm i -g typescript eslint

# add alpine testing
RUN apk add libgdiplus --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/

# python
RUN apk add python3 py3-pip py3-virtualenv

# php
RUN apk add php-cli php composer

# mono (not found on alpine:edge as of 12.2023)

# java 17
RUN apk add openjdk21-jdk maven gradle

# misc languages
RUN apk add go rust cargo lua perl ruby docker
    
# clean apk add
RUN apk cache clean && \
  	rm -rf /etc/apk/cache
    
# set user
USER workspace
WORKDIR /home/workspace

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

CMD [ "code", "tunnel", "--accept-server-license-terms" ]