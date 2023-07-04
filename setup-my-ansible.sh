#!/bin/env bash
ansible-galaxy role install -r requirements.yml  --force
ansible-galaxy collection install -r requirements.yml --force
touch collections/ansible_collections/.gitdummy
