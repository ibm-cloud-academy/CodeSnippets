#!/bin/bash

## Print a horizontal line
hline () {
        printf -v _hr "%*s" $(tput cols) && echo ${_hr// /${1--}}
}

clear
hline =

lsb_release -a
hline

git --version
hline

java -version
hline

/opt/software/wlp/bin/server version
hline

echo -n "node version "
node -v
hline

echo -n "npm version "
npm -v
hline =
echo
