#!/bin/bash


if [ -z "$1" ]
  then
    echo "No argument supplied. Provide version"
    exit;
fi

echo "Build 3bittalk/php-apache-mysql:$1 ..."

docker build -t 3bittalk/php-apache-mysql:$1 .
docker build -t 3bittalk/php-apache-mysql:latest .

docker images | grep 3bittalk

docker push 3bittalk/php-apache-mysql:$1
docker push 3bittalk/php-apache-mysql:latest
