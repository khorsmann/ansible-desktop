#!/bin/env bash
which git >/dev/null || (echo "Please install 'git'. Abort." && exit 1)
which pyenv >/dev/null || bash install-pyenv.sh
which ansible >/dev/null || bash setup-local-ansible.sh
ansible-galaxy role install -r requirements.yml  --force
ansible-galaxy collection install -r requirements.yml --force
touch collections/ansible_collections/.gitdummy
