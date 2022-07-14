#!/bin/sh
while :
do
  nping --data-string "flag{nping_is_a_cool_thing}" --tcp -p 80,443 start2
done
