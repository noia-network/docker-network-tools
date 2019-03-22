FROM python:stretch
COPY requirements.txt /tmp
RUN apt-get update && apt-get upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y traceroute curl dnsutils netcat-openbsd jq nmap net-tools mtr iperf iperf3 tshark tcpdump \
    fping iptraf iftop nmap \
    && cd /tmp && pip --no-cache-dir install -r requirements.txt \
    && rm -rf /var/lib/apt/lists/*


