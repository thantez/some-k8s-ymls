#!/bin/bash

# Install k3s
curl -sfL https://get.k3s.io | sh -

# Install requirements
apt install vim

# Git
## Config
git config --global user.name thantez
git config --global user.email "bakhshi@protonmail.com"

## Clone YAMLs
git clone https://github.com/thantez/some-k8s-ymls

# Go to directory
cd some-k8s-ymls
