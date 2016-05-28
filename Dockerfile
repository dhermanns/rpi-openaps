# Pull base image
FROM resin/rpi-raspbian:wheezy
MAINTAINER Hermanns <h3rmanns@gmail.com>

# Install dependencies
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential \
    git \
    python \
    python-setuptools \
    python-numpy \
    python-software-properties \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Install openaps
RUN easy_install -Z openaps

# Install reference installation
RUN git clone https://github.com/openaps/oref0.git

# Define default command
CMD ["bash"]
