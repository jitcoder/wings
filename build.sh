#!/bin/bash

mkdir -p dist

docker run --platform linux/amd64 --rm -v "$PWD":/go/src/app -w /go/src/app golang:latest \
  /bin/bash -c \
  "GOARCH=amd64 go build -o dist/wings_linux_amd64 -v -trimpath -ldflags=\"-s -w -X github.com/pterodactyl/wings/system.Version=1.11.13-enjoy\" github.com/pterodactyl/wings"
