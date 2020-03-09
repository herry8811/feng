iptables -t nat -A PREROUTING -p tcp --dport 4000 -j DNAT --to-destination 1.1.1.1:4000
iptables -t nat -A PREROUTING -p udp --dport 4000 -j DNAT --to-destination 1.1.1.1:4000
iptables -t nat -A POSTROUTING -p tcp -d 1.1.1.1 --dport 4000 -j SNAT --to-source 2.2.2.2
iptables -t nat -A POSTROUTING -p udp -d 1.1.1.1 --dport 4000 -j SNAT --to-source 2.2.2.2
