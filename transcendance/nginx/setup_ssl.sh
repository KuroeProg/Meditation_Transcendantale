#!/bin/sh
if [ ! -f /etc/nginx/certs/transcendence.crt ]; then
    echo "Génération des certificats SSL..."
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/certs/transcendence.key \
    -out /etc/nginx/certs/transcendence.crt \
    -subj "/C=FR/ST=Perpignan/L=Perpignan/O=42Perpignan/CN=localhost"
fi
exec nginx -g 'daemon off;'