#!/bin/bash
# for building the octobox image on pis

set -e

#docker build --network=host -t ruby-2.6.1-alpine-arm https://raw.githubusercontent.com/docker-library/ruby/eae22dc2dfe30b48f1633912396110539e1b8d49/2.6/alpine3.9/Dockerfile
#docker tag ruby-2.6.1-alpine-arm us.gcr.io/jeefme-185614/ruby:2.6.1-alpine

docker build --network=host -t octobox-arm .
docker tag octobox-arm us.gcr.io/jeefme-185614/octobox:`git rev-parse --short HEAD`
docker tag octobox-arm us.gcr.io/jeefme-185614/octobox:latest

docker push us.gcr.io/jeefme-185614/octobox:`git rev-parse --short HEAD`
docker push us.gcr.io/jeefme-185614/octobox:latest

