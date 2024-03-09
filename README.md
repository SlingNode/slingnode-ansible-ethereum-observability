# Ansible Role: Observability

slingnode.ethereum_observability is an Ansible role that facilitates deployment of monitoring stack for Ethereum clients deployed using [slingnode.ethereum role](https://github.com/SlingNode/slingnode-ansible-ethereum). Its objective is to enable a consistent way of monitoring the chosen Ethereum client mix. The role can deploy a monitoring stack in two modes:

* single server deployment - observability stack runs on the same server as the Ethereum clients
* distributed - observability stack runs on a central server and monitors Ethereum clients over the network


# Supported Operating Systems

The role has been tested on the following operating systems

RedHat based:

* AlmaLinux 9.1
* AlmaLinux 8.7
* RockyLinux 9.1
* RockyLinux 8.7
* AmazonLinux 2

Debian based:

* Ubuntu 22.04
* Ubuntu 20.04

# Documentation

The README file provides a basic overview only. Full documentation documentation is available at https://docs.slingnode.com/slingnode.ethereum_observability/

# Requirements

Ansible Docker module is required on the Ansible controller. It can be installed using the below command:

```
ansible-galaxy collection install community.docker:==3.8.0
```

# Dependencies

The role requires a running docker daemon and docker compose plugin installed on the target server. The role has been tested with "geerlingguy.docker" role.

# Role Variables

Role variables are defined in 'defaults'. This means they have the lowest precedence and can be easily overridden. See [Ansible documentation](https://docs.ansible.com/ansible/latest/playbook\_guide/playbooks\_variables.html#understanding-variable-precedence) for details on the precedence.


| Variable location              | Purpose                                                          |
| ------------------------------ | ---------------------------------------------------------------- |
| defaults/main/main.yml         | generic variables for the role; common variables for all clients |
| vars/\{{os\_family\}}.yml      | variables specific to the OS                                     |


# Example playbook

The best place to start is to check the examples project. There are multiple example playbooks ranging from a simple single node deployment to a distributed deployment of a large number of nodes. The examples project includes sample playbooks, inventories and group vars that you can adapt to your needs. The examples project is available here [https://github.com/SlingNode/slingnode-ethereum-examples](https://github.com/SlingNode/slingnode-ethereum-examples)

Sample Playbook:

```yaml
---
- name: Deploy observability
  hosts: all
  become: true

  roles:
    - role: geerlingguy.docker
      vars:
        docker_package_state: present
        docker_install_compose_plugin: true

    - role: slingnode.ethereum_observability


```
# Contact

If you have any questions join our [Discord server](https://discord.gg/EPg7yfhmUU) or log a GitHub issue.

# License

MIT

# Author Information

This role was created in 2023 by [pgjavier](https://github.com/pgjavier) and [karolpivo](https://github.com/karolpivo).
