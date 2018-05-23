#!/bin/bash
# for building the octobox image on pis

set -e

docker build --network=host -t ruby-2.5.1-alpine-arm https://raw.githubusercontent.com/docker-library/ruby/c9644fe5c95cd71913db348baa41240f05d882b3/2.5/alpine3.7/Dockerfile
docker tag ruby-2.5.1-alpine-arm us.gcr.io/jeefme-185614/ruby:2.5.1-alpine

docker build --network=host -t octobox-arm .
docker tag octobox-arm us.gcr.io/jeefme-185614/octobox:`git rev-parse --short HEAD`

