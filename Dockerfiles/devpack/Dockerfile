FROM domkalan/vscode-tunnel:base

# build essential
RUN apt-get update && \
    apt-get install -y build-essential

# nodejs
RUN apt-get install nodejs npm -y && \
    npm i -g typescript eslint

# python
RUN apt-get install python3 python3-pip python3-virtualenv -y

# php
RUN apt-get install php-cli php8.2 composer -y

# mono
RUN apt-get install mono-complete -y

# java 17
RUN apt-get install openjdk-17-jdk maven gradle -y

# misc languages
RUN apt-get install golang rustc cargo lua5.4 perl ruby docker.io -y
    
# clean apt
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
# set user
USER workspace
WORKDIR /home/workspace

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

CMD [ "code", "tunnel", "--accept-server-license-terms" ]