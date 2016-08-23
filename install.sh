#! /bin/bash

set -e

version="1.10"

apt-get update && apt-get install -y curl build-essential
curl -sL https://github.com/kr/beanstalkd/archive/v$version.tar.gz | tar xvz -C /tmp
cd /tmp/beanstalkd-$version
make
cp beanstalkd /usr/bin

apt-get remove --purge -y curl build-essential && apt-get autoclean && apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

