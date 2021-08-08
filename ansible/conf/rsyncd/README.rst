roles/rsyncd configuration
==========================
This directory contains configurations for ``rsyncd`` in a similar way the
``nginx`` directory operates, with distinct files for each module, which get
composed into the final ``rsyncd.conf`` file.

These modules are selected to be enabled/disabled via host and group variables.
