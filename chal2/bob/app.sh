#!/bin/bash
PORT=${1:-1234}
while :
do
	echo 'flag{this_is_the_flag}' | nc alice $PORT
done
