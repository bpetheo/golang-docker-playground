#!/bin/sh

# build
docker build -t ma-app-img .

# run
docker run -it --rm --name ma--app-instance -p 17001:8080 -v "$PWD":/go/src/MathApp -w /go/src/MathApp ma-app-img
