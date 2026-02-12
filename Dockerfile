
# Use the same base image
FROM camptocamp/mapserver:8.4

# Set environment variables
ENV MAPSERVER_CONFIG_FILE=/etc/mapserver/docker_mapserver.conf \
    IO_TIMEOUT=300

# Expose port (informational only — does NOT publish it on the host)
EXPOSE 80

# Optional: If you want to copy local configuration into the image
# COPY ./mapserver/ /etc/mapserver/
