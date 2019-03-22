# docker-network-tools
Docker container with a network utilities installed  

Debian based container with a network utilities installed:

* dnsutils
* netcat (openbsd version)
* curl
* traceroute
* jq
* net-tools (arp, ifconfig, netsat, rarp, nameif, route & more)
* nmap
* serviceping 
* mtr
* iperf
* iperf3
* tshark
* tcpdump  
* iptraf-ng
* iftop
* fping

To run tshark, tcpdump, iptraf-ng or iftop you will need to add additional Linux capabilities:  

      docker run -it --rm --cap-add net_raw --cap-add net_admin --net=host network-tools tshark -i eth0
