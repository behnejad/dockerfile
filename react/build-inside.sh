#!/bin/bash

rm -r node_modules 2> /dev/null
rm -r package-lock.json 2> /dev/null

npm install
npm run build

chown -R $1 dist/

rm -r node_modules 2> /dev/null
rm -r package-lock.json 2> /dev/null
