#!/bin/bash

function die () {
  echo >&2 "$@"
  exit 1
}

[[ $# -eq 1 ]] || die 'a certificate file required.'

openssl x509 -text -noout -in $1 | grep -e Subject: -e Issuer: | sort --reverse
