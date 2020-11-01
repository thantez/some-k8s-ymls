#!/bin/bash

# Install k3s
curl -sfL https://get.k3s.io | sh -

# Install requirements
apt install vim

# Git config
git config --global user.name thantez
git config --global user.email "bakhshi@protonmail.com"

# Completion setup
k completion bash > cbash-temp
source cbash-temp
rm -fr cbash-temp
