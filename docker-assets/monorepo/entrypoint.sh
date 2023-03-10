#!/bin/bash

[[ ${DEBUG} = "yes" ]] && set -ex || set -e
[[ ${DEBUG} = "yes" ]] && env

[[ ! -f "${PWD}/package.json" ]] && echo -e "${PWD}/package.json not found!\n" && exit 1

yarn install
#sudo chown -R ${USER}:${GROUP} "${HOME}/.npm"
yarn dev
