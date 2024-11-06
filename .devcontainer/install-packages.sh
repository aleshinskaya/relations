#!/bin/bash
set -ex

# Add commands to install additional packages here.

echo "Running .devcontainer/setup.sh to install additional packages..."
# Example: apt-get update && apt-get install --no-install-recommends -y vim

# Install Miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p /opt/conda && \
    rm /tmp/miniconda.sh

export PATH="/opt/conda/bin:${PATH}"
conda init bash

echo "Done."