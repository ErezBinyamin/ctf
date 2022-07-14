#!/bin/sh
while :
do
  nping --data-string "username = user, password = 4f3eca7346784d74aaeb0a47b0baba6e" --tcp -p 80,443 start3
done
