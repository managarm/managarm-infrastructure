#!/bin/sh
# SPDX-License-Identifier: GPL-3.0-only
set -xe
[ -z "$1" ] && printf '%s\n' 'I need a hostname.' >&2
mkdir -p wg

umask 077
wg genkey | tee wg/"$1" | wg pubkey > wg/"$1".pub
wg genpsk > wg/"$1".psk
