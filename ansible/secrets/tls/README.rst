roles/acme secrets
==================
.. TODO(arsen): change account_key.pem -> {{ ansible_hostname }}.pem?
The secrets files in here correspond to ACME and TLS related secrets used for
``acme`` and various other roles (``rsyncd``, ``nginx``). It consists of one
``account_key.pem`` for ACME and subdirectories for each domain containing the
domain key and CSR. The helper script ``../gentls.sh`` can be used to populate
this directory domain by domain from the parent directory.
