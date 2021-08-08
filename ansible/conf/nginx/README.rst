roles/nginx configuration
=========================
This directory contains definitions for vhosts on nginx servers. They consist
of ``stream_`` and ``site_`` modules, for TCP streams and HTTP(S) sites,
respectively. The ``nginx_macros.j2`` file exists for reusable macros such as
``ssl_keys``.

These sites are enabled (but not removed!) via host/group variables.
