# Start from the official IPRoyal image
FROM iproyal/pawns-cli:latest

USER root

# Install Busybox (tiny HTTP server)
RUN apt-get update && apt-get install -y busybox

# Copy the startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Run both Pawns and the HTTP server
CMD ["/start.sh"]
