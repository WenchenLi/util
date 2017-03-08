#!/usr/bin/env bash
USERNAME=$1
REMOTEHOST=$2
AUTHORIZED_KEY=$3

ssh-keygen -t rsa
ssh-copy-id ${USERNAME}@${REMOTEHOST}
chmod 600 ~/.ssh/${AUTHORIZED_KEY}
