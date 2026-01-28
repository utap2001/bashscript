#!/bin/bash

sudo apt install iptables-persistent netfilter-persistent 


sudo iptables -I FORWARD -i wlp2s0 -j ACCEPT
sudo iptables -I FORWARD -o wlp2s0 -j ACCEPT
sudo iptables -t nat -I POSTROUTING -o wlp2s0 -j MASQUERADE
sudo iptables -I FORWARD -i ztpolmut73 -j ACCEPT
sudo iptables -I FORWARD -o ztpolmut73 -j ACCEPT
sudo iptables -t nat -I POSTROUTING -o ztpolmut73 -j MASQUERADE


sudo service netfilter-persistent save







