managarm infrastructure
=======================
Our infrastructure is managed by Ansible_; look into the ``ansible/``
subdirectory.

Some nonstandard packages not big enough for their own repositories can be seen
in ``pkgs/``. These are designed to be ``stow``-ed onto final servers.

.. _Ansible: https://ansible.com/

License and copyright
=====================
All work held under the umbrella of this repository is MIT licensed except
where otherwise specified. See LICENSE_ for the full text of this notice.

.. _LICENSE: ./LICENSE
