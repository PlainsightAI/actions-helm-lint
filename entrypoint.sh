#!/bin/sh -l

export PATH=/usr/local/bin:$PATH

# Verify that wget/tar exist on the system
apt-get update -y && sudo apt-get install wget tar

# Download Helm and extract it to /usr/local/bin
wget https://get.helm.sh/helm-v3.7.1-linux-amd64.tar.gz
tar -zxvf helm-v3.7.1-linux-amd64.tar.gz -C /usr/local/bin

# Lint
output=$(/usr/local/bin/helm lint "$1" 2>&1)

# Set Output
echo "::set-output name=output::$output"