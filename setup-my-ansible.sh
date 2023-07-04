#!/bin/env bash
which pyenv || bash install-pyenv.sh
which ansible || bash setup-local-ansible.sh
ansible-galaxy role install -r requirements.yml  --force
ansible-galaxy collection install -r requirements.yml --force
touch collections/ansible_collections/.gitdummy
