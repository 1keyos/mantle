#!/bin/bash
rm -rf bin
docker build -t my-golang-app .
docker run -it -v `pwd`/:/go/src/app/bin2 --rm --name my-running-app my-golang-app cp -rf /go/src/app/bin /go/src/app/bin2
