# docker-network-tools

Debian based container with a network utilities installed:

* dnsutils
* netcat (openbsd version)
* curl
* traceroute
* jq
* net-tools (arp, ifconfig, netsat, rarp, nameif, route & more)
* nmap
* [serviceping](https://github.com/yahoo/serviceping)
* mtr
* iperf
* iperf3
* tshark
* tcpdump  
* iptraf-ng
* iftop
* fping

To run:  

      docker run -it --rm virginijusm/network-tools serviceping -d -c 5 www.google.com
      SERVICEPING www.google.com:80 (172.217.23.164:80).
      from www.google.com:80 (172.217.23.164:80): dns=0.31ms connect=5.16ms all=5.49ms 
      from www.google.com:80 (216.58.205.228:80): dns=0.55ms connect=5.39ms all=6.03ms 
      from www.google.com:80 (172.217.23.164:80): dns=0.49ms connect=5.29ms all=5.87ms 
      from www.google.com:80 (172.217.23.164:80): dns=0.64ms connect=5.30ms all=6.02ms 
      from www.google.com:80 (172.217.23.164:80): dns=0.51ms connect=5.25ms all=5.85ms 
      --- www.google.com ping statistics ---
      5 packages transmitted, 5 received, 0.0% package loss, time 4040.359ms
      rtt min/avg/max/dev = 5.49/5.85/6.03/6.04 ms

    

To run tshark, tcpdump, iptraf-ng or iftop you will need to add additional Linux capabilities:  

      docker run -it --rm --cap-add net_raw --cap-add net_admin --net=host network-tools tshark -i eth0
