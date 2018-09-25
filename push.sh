#!/bin/sh

LC=$(git rev-parse --short HEAD)
docker build -t kbcarter/webapp:${LC} .
docker push kbcarter/webapp:${LC}