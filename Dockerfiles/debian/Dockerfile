FROM debian:testing


RUN apt-get update && \
    apt-get install -y git curl sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64" \
        --output /tmp/vscode-cli.tar.gz && \
    tar -xf /tmp/vscode-cli.tar.gz -C /usr/bin && \
    rm /tmp/vscode-cli.tar.gz && \
    useradd -ms /bin/bash workspace && \
    adduser workspace sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


CMD [ "code", "tunnel", "--accept-server-license-terms" ]