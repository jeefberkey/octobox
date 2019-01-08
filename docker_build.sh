#!/bin/bash
# for building the octobox image on pis

set -e

docker build --network=host -t ruby-2.6.0-alpine-arm https://raw.githubusercontent.com/docker-library/ruby/84db4691c080384c8fbce44c722d46cedd6a384b/2.6/alpine3.8/Dockerfile
docker tag ruby-2.5.3-alpine-arm us.gcr.io/jeefme-185614/ruby:2.6.0-alpine

docker build --network=host -t octobox-arm .
docker tag octobox-arm us.gcr.io/jeefme-185614/octobox:`git rev-parse --short HEAD`
docker tag octobox-arm us.gcr.io/jeefme-185614/octobox:latest

docker push us.gcr.io/jeefme-185614/octobox:`git rev-parse --short HEAD`
docker push us.gcr.io/jeefme-185614/octobox:latest

