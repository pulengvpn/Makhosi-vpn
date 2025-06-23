FROM debian:bullseye-slim

# Install necessary packages
RUN apt-get update && \
    apt-get install -y wireguard iproute2 iptables qrencode && \
    apt-get clean

# Copy WireGuard configuration into the container
COPY wg0.conf /etc/wireguard/wg0.conf

# Expose the WireGuard port
EXPOSE 51820/udp

# Command to start WireGuard
CMD ["wg-quick", "up", "wg0"]
