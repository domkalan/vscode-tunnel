FROM domkalan/vscode-tunnel:base-fedora

# build essential
RUN dnf -y groupinstall "Development Tools" "Development Libraries"

# nodejs
RUN dnf install nodejs npm -y && \
    npm i -g typescript eslint

# python
RUN dnf install python3 python3-pip python3-virtualenv -y

# php
RUN dnf install php-cli php composer -y

# mono
RUN dnf install mono-complete -y

# java 17
RUN dnf install java-17-openjdk maven -y

# misc languages
RUN dnf install golang rustc cargo lua perl ruby docker -y
    
# clean dnf
RUN dnf clean all && \
  	rm -rf /var/cache/yum
    
# set user
USER workspace
WORKDIR /home/workspace

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

CMD [ "code", "tunnel", "--accept-server-license-terms" ]