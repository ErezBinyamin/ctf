#!/bin/sh
PORT=${1:-1234}
while :
do
	sleep 1
	echo "flag{fart}" | nc alice2 ${PORT}
done
