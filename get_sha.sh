#!/usr/bin/env bash

set -eu

URL=${1}

echo "Downloading ${URL}..."

wget -q -O temp.tar.gz ${URL}
# `shasum` is probably only available on OSX
shasum -a 256 temp.tar.gz

rm temp.tar.gz
