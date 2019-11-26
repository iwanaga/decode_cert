#!/bin/bash

openssl x509 -text -noout -in $1 | grep -e Subject: -e Issuer: | sort --reverse
