FROM debian

RUN apt update && \
    apt install dnsmasq -y && \
    sed -i s/#user=/user=root/g /etc/dnsmasq.conf

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
