#!/bin/sh
echo "Writing /etc/openfortivpn/config"
read -p "enter itu username without the @itu.dk:
" username

echo "# config file for openfortivpn, see man openfortivpn(1)
host = sslvpn.itu.dk
port = 443
username = $username
trusted-cert = 93a93741a75688318f9f15590f9a3b2790a617ce4394c925e723cca6c1418aa9" > /etc/openfortivpn/config

echo "To start vpn run 'sudo openfortivpn' and type you itu password
and you will get a sms with a one-time password"

