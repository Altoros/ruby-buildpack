#!/usr/bin/env bash
set -xe

tar -xzvf libyaml-0.1.6.tar.gz
cd yaml-0.1.6
curl "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;hb=HEAD;f=config.guess" > ./config/config.guess
curl "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;hb=HEAD;f=config.sub" > ./config/config.sub
CFLAGS='-fPIC' ./configure --prefix=${install_target} --disable-shared
make
make install
