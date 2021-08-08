roles/wireguard_star secrets
============================
This directory contains secrets related to the ``wireguard_star`` role. They
consist of triplets of files, for the private, public and preshared key. Only
one preshared key is required per host since each host only ever connects to
one peer, the star router. These files are named ``{{ ansible_hostname }}``,
``{{ ansible_hostname }}.pub`` and ``{{ ansible_hostname }}.psk`` for the
private, public and preshared key. These can be generated using the
``../genwg.sh`` helper script in the parent directory, one hostname at a time.
