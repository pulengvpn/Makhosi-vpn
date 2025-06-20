FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y wireguard iproute2 iptables qrencode && \
    apt-get clean

CMD ["sleep", "infinity"]
