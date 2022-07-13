#!/bin/sh
PORT=${1:-1234}
while :
do
	sleep 1
	echo "flag{bob2_sending_to_alice2}" | nc alice2 ${PORT}
done
