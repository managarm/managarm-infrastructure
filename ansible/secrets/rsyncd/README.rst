roles/rsyncd secrets
====================
The secrets file in here correspond to ``/etc/rsyncd.secrets`` files on hosts
with the ``rsyncd`` role. They contain ``username:password`` pairs for users on
that role. Look at ``rsyncd.conf(5)`` for more information (``secrets file``
option). These are stored as ``{{ ansible_hostname }}`` and are not treated as
templates.
