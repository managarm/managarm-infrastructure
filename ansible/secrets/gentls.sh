#!/bin/sh
# SPDX-License-Identifier: GPL-3.0-only
set -xe
[ -z "$1" ] && printf '%s\n' 'I need a hostname.' >&2
mkdir -p tls/"$1"
umask 077

if ! [ -r tls/account_key.pem ]; then
	printf '%s\n' 'no account key, generating one'
	openssl genrsa 4096 > tls/account_key.pem
fi

cd tls/"$1"

openssl genrsa 4096 > privkey.pem
openssl req -new -sha256 -key privkey.pem -subj "/" \
	-addext "subjectAltName = DNS:$1" > csr.pem
