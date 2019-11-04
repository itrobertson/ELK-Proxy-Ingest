#!/usr/bin/env bash

# this script depends on packer, aws-cli, and aws credentials in env vars or credentials file
# https://www.packer.io/intro/getting-started/install.html
# https://www.packer.io/docs/builders/amazon.html

packer build "$(dirname $(realpath $0))/sanvada-elk-ami.json"
