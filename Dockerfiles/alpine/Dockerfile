FROM alpine:latest


RUN apk add git curl sudo bash && \
    apk cache clean && \
  	rm -rf /etc/apk/cache && \
    curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64" \
        --output /tmp/vscode-cli.tar.gz && \
    tar -xf /tmp/vscode-cli.tar.gz -C /usr/bin && \
    rm /tmp/vscode-cli.tar.gz && \
    adduser -D -s /bin/bash workspace && \
    adduser workspace wheel && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


CMD [ "code", "tunnel", "--accept-server-license-terms" ]