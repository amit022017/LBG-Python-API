#!/bin/bash

docker build -t amitdevdocker/automated-image:latest .
docker push amitdevdocker/automated-image:latest

docker stop auto-container
docker rm auto-container
docker run -d -p 8080:7000 --name auto-container amitdevdocker/automated-image:latest