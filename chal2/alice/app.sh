#!/bin/bash
PORT=${1:-1234}
while :
do
	timeout 3 nc -l ${PORT}
done
