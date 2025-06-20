FROM alpine:latest
RUN apk add --no-cache wireguard-tools bash
COPY ./vpn-config /etc/wireguard/
EXPOSE 51820/udp
CMD ["wg-quick", "up", "wg0"]
