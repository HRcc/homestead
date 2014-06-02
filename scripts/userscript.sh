#!/usr/bin/env bash

echo 'Provisioning userscript...'

# Installing MongoDB
bash -c "$(curl -fsSL https://raw.githubusercontent.com/fideloper/Vaprobash/master/scripts/mongodb.sh)"

echo "--- Editing PATH ---"
echo 'PATH=vendor/bin:$PATH' >> /home/vagrant/.zshrc

