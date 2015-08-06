#!/usr/bin/env bash
set -ex

tar -xzvf node-0.12.7.tar.gz
cd node-0.12.7-release-ppc

./configure --prefix=${install_target} # --fully-static
make
make install
