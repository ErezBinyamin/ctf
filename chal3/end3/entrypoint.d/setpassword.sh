#!/usr/bin/env bash
set -x
set -e

#echo 'user1:$6$lAkdPbeeZR7YJiE3$ohWgU3LcSVit/hEZ2VOVKvxD.67.N9h5v4ML7.4X51ZK3kABbTPHkZUPzN9jxQQWXtkLctI0FJZR8CChIwz.S/' | chpasswd --encrypted

# Or if you don't pre-hash the password remove the line above and uncomment the line below.
# echo "user1:user1password" | chpasswd
echo "user:4f3eca7346784d74aaeb0a47b0baba6e" | chpasswd

# FROM: https://askubuntu.com/questions/530920/tcpdump-permissions-problem
# You need to give tcpdump the permission and capability to allow raw packet captures and network interface manipulation.
if ! getent group pcap
then
  groupadd pcap
  usermod -a -G pcap intern
  # Next, change the group of tcpdump and set permissions:
  chgrp pcap $(which tcpdump)
  chmod 750 $(which tcpdump)
  # Finally, use setcap to give tcpdump the necessary permissions:
  #setcap cap_net_raw,cap_net_admin=eip $(which tcpdump)
  setcap cap_net_raw=eip $(which tcpdump)
  # Does not work in contianer: https://stackoverflow.com/questions/58941093/setcap-cap-net-admin-in-linux-containers-prevents-user-access-to-every-file
  #setcap cap_net_raw,cap_net_admin=eip $(which tcpdump)
fi

set +e
set +x
