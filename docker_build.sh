#!/bin/bash

docker build -t ruby-2.5.1-alpine-arm https://raw.githubusercontent.com/docker-library/ruby/c9644fe5c95cd71913db348baa41240f05d882b3/2.5/alpine3.7/Dockerfile
docker tag ruby-2.5.1-alpine-arm us.gcr.io/jeefme-185614/ruby:2.5.1-alpine

docker build -t octobox-arm .
docker tag octobox us.gcr.io/jeefme-185614/octobox:latest

