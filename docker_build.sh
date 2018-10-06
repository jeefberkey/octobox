#!/bin/bash
# for building the octobox image on pis

set -e

docker build --network=host -t ruby-2.5.1-alpine-arm https://raw.githubusercontent.com/docker-library/ruby/ccf00a6b31abe14d27bdda498707a2ce338ef019/2.5/alpine3.7/Dockerfile
docker tag ruby-2.5.1-alpine-arm us.gcr.io/jeefme-185614/ruby:2.5.1-alpine

docker build --network=host -t octobox-arm .
docker tag octobox-arm us.gcr.io/jeefme-185614/octobox:`git rev-parse --short HEAD`
docker tag octobox-arm us.gcr.io/jeefme-185614/octobox:latest

docker push us.gcr.io/jeefme-185614/octobox:`git rev-parse --short HEAD`
docker push us.gcr.io/jeefme-185614/octobox:latest

