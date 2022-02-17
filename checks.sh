#!/bin/sh
set -e

echo 'Installing vale'
curl -sfL https://install.goreleaser.com/github.com/ValeLint/vale.sh | sh -s v2.9.1
export PATH="./bin:$PATH"

vale .
