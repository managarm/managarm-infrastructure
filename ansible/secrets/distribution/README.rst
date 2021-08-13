roles/distribution secrets
==========================
The secret files in here correspond to ``approve-distro.secret.toml`` files for
the ``distro-repo`` package. They are of the format:

.. code-block:: toml

    [discord_hook]
    webhook_url = "..."

These files are stored in ``{{ ansible_hostname }}.j2`` and will directly map
to ``/etc/approve-distro.secret.toml`` on the machines with this role.

.. vim: sw=4 et :
