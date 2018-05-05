#!/bin/bash

set -e

docker build --no-cache --network=host -t ruby-2.5.1-alpine-arm https://raw.githubusercontent.com/docker-library/ruby/c9644fe5c95cd71913db348baa41240f05d882b3/2.5/alpine3.7/Dockerfile
docker tag ruby-2.5.1-alpine-arm us.gcr.io/jeefme-185614/ruby:2.5.1-alpine

docker build --no-cache --network=host -t octobox-arm .
docker tag octobox-arm us.gcr.io/jeefme-185614/octobox:latest

