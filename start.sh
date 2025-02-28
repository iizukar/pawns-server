#!/bin/sh
# Start Pawns CLI in the background (using environment variables)
./pawns-cli \
  -email="$PAWNS_EMAIL" \
  -password="$PAWNS_PASSWORD" \
  -device-name="$PAWNS_DEVICE_NAME" \
  -device-id="$PAWNS_DEVICE_ID" \
  -accept-tos &

# Start a fake HTTP server (keeps the container alive)
busybox httpd -p 8080 -h / -f
