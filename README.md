# ansible-desktop

little helper to setup my desktop enviroment
##

change your local_user in vars.yml to your username.


# Automatic sudo without ansible-playbook -K

## put the path to your ANSIBLE_VAULT_PASSWORD_FILE in your .bashrc

```shell
export ANSIBLE_VAULT_PASSWORD_FILE=/path/to/vault_password_file.txt
```

## create an vault.yml with your ANSIBLE_BECOME_PASS

```shell
ansible-vault create vault.yml
```

### Content of vault.yml

```yaml
---
ansible_become_pass: "YOUR-SUDO-PASSWORD-HERE"
```

