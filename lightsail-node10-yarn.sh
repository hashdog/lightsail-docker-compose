#!/bin/bash

# fix interactive install
export DEBIAN_FRONTEND=noninteractive

curl -o nodesource_setup.sh -sL https://deb.nodesource.com/setup_10.x
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list

chmod +x ./nodesource_setup.sh
./nodesource_setup.sh

apt-get -yq install build-essential gcc g++ make nodejs yarn
