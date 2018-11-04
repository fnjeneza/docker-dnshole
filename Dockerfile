FROM debian

RUN apt update && \
    apt install dnsmasq wget -y --no-install-suggests && \
    wget https://raw.githubusercontent.com/fnjeneza/docker-dnshole/master/hosts.ban -O /etc/hosts.ban && \
    wget https://raw.githubusercontent.com/fnjeneza/docker-dnshole/master/dnsmasq.conf -O /etc/dnsmasq.conf

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
