#!/usr/bin/env bash
set -eux

export GOPATH="$( pwd )"
export CGO_ENABLED=1

module='github.com/ipfs/go-ipfs'

make -C "src/${module}" \
  install \
  GOTAGS=openssl
