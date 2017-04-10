#!/bin/bash

## Print a horizontal line
hline () {
        printf -v _hr "%*s" $(tput cols) && echo ${_hr// /${1--}}
}

clear
hline =

## Ubuntu version
lsb_release -a
hline

## Git version
git --version
hline

## Git version
java -version
hline

## Websphere Application Server version
/opt/software/wlp/bin/server version
hline

## node version
echo -n "node version "
node -v
hline

## npm version
echo -n "npm version "
npm -v
hline

## Docker version
echo -n "docker version "
docker version
hline

## Cloud Foundry version
echo -n "Cloud Foundry version "
cf version
hline

## Bluemix version
echo -n "Cloud Foundry version "
bx -version

hline =
echo
