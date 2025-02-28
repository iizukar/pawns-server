# Use the official IPRoyal image (Alpine-based)
FROM iproyal/pawns-cli:latest

# 1. Switch to root using UID (0)
USER 0

# 2. Install core system files first
RUN apk update && apk add --no-cache shadow busybox

# 3. Create required user/group entries
RUN echo "root:x:0:0:root:/root:/bin/sh" > /etc/passwd && \
    echo "root:x:0:root" > /etc/group

# 4. Copy the startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# 5. Run as root
CMD ["/start.sh"]
