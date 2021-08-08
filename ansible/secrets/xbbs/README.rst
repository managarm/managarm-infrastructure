roles/xbbs_coordinator secrets
==============================
.. TODO(arsen): github_secret -> gh_{{ ansible_hostname }}?
Two kinds of secrets are contained in this directory: ``github_secret``, a HMAC
secret for verifying GitHub requests in ``xbbs.webhooks``, and ``{{ fingerprint
}}.plist``/``{{ fingerprint }}.rsa`` pair; this pair consists of a public and
a private key, respectively, used for signing ``xbps`` packages by
``xbbs.coordinator``, and can be generated via a script provided in the ``xbbs``
source tree.
