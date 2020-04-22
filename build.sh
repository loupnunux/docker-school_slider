#!/bin/bash

docker build --no-cache -f Dockerfile -t school_slider .
docker-compose -f docker-compose.prod.yml up -d app

