#!/bin/sh
# SPDX-License-Identifier: GPL-3.0-only
set -xe
[ -z "$1" ] && printf '%s\n' 'I need a hostname.' >&2
mkdir -p hwci_net

umask 077
wg genkey | tee hwci_net/"$1" | wg pubkey > hwci_net/"$1".pub
wg genpsk > hwci_net/"$1".psk
