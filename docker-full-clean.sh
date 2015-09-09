#!/bin/bash

# Stop and Delete all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

# Delete all images
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q)

# Make sure that exited containers are deleted
docker rm -v $(docker ps -a -q -f status=exited)

# Remove unwanted ‘dangling’ images
docker rmi $(docker images -f "dangling=true" -q)
