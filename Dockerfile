FROM python:stretch
COPY requirements.txt /tmp
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y traceroute curl dnsutils netcat-openbsd jq nmap net-tools mtr iperf iperf3 tshark tcpdump \
    && cd /tmp && pip --no-cache-dir install -r requirements.txt \
    && rm -rf /var/lib/apt/lists/*


