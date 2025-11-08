FROM fedora:rawhide


RUN dnf install -y git curl sudo && \
    dnf clean all && \
  	rm -rf /var/cache/yum && \
    curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64" \
        --output /tmp/vscode-cli.tar.gz && \
    tar -xf /tmp/vscode-cli.tar.gz -C /usr/bin && \
    rm /tmp/vscode-cli.tar.gz && \
    useradd -m -s /bin/bash workspace && \
    usermod -aG wheel workspace && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


CMD bash