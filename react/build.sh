#!/bin/bash

VR=`sed -nE 's/.*appVer.*"(.*)".*$/\1/p' app-config.ts`
CH=`git rev-parse HEAD`
distFile=scf-dist-$VR.tar.gz

sed -i "s/commitHash.*$/commitHash: \"${CH}\",/g" vite.config.ts

sudo docker run \
	--rm \
	-it \
	-w /app \
	--name node \
	-v $(pwd):/app \
	--entrypoint /bin/bash \
	node:21.6.2-slim \
	-c "/app/build-inside.sh $(id -u):$(id -g)"

rm $distFile 2> /dev/null
tar -cvzf $distFile dist/
# rm -r dist/
