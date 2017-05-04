# CodeSnippets

Anything in this directory [scriptupdates/](scriptupdates/) will be made executable and copied to `/usr/local/bin`. These scripts can be run from the command line because the `/usr/local/bin` is on executable path.

This directory contains:

* [updateScripts](updateScripts) - This is the script that performs the update. It copies all of the scripts in this directory, makes them executable and then copies them to `/usr/local/bin`. And yes, it will update itself.
* [networkInfo](networkInfo) - A diagnostic script that displays current network information and tests network connectivity. In a simple to understand format.
* [versions](versions) - A diagnostic script that displays the version of software installed including: Platform, GIT, Node, NPM, Docker, Cloud Foundry, Bluemix CLI, and OpenWhisk.

