#!/bin/sh
PORT=${1:-1234}
while :
do
    nc -klp ${PORT}
done
