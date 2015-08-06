#!/usr/bin/env bash

set -ex

current_dir=$(dirname $0)
target_archive_path=$1

source $current_dir/helpers.sh

tar xzf ruby/ruby-2.1.5.tar.gz
cd ruby-2.1.5
update_config_files
LDFLAGS="-Wl,-rpath -Wl,${install_target}" CFLAGS='-fPIC' ./configure --prefix=${install_target} --disable-install-doc --with-opt-dir=${install_target} --without-gmp
make
make install

