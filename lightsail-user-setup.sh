#!/bin/bash

# Config npm
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
source ~/.profile

# Config ssh
ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
touch ~/.ssh/authorized_keys
