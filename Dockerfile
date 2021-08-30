FROM debian:bullseye

# ------------------- #
# Docker image labels #
# ------------------- #
LABEL description="Docker image for deb package build" \
 vendor="Marcel Andree" \
 maintainer="marcel@andree.cloud"

# ------------------- #
# Install build tools #
# ------------------- #
RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get -q -y install build-essential devscripts debhelper