# Use the official IPRoyal image (Alpine-based)
FROM iproyal/pawns-cli:latest

# Switch to root user
USER root

# Install Busybox HTTP server using Alpine's package manager (apk)
RUN apk update && apk add --no-cache busybox

# Copy the startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Run as root
CMD ["/start.sh"]
