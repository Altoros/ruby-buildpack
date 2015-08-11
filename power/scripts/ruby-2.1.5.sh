#!/usr/bin/env bash

set -ex

tar -xzvf ruby-2.1.5.tar.gz
pushd ruby-2.1.5
  curl "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;hb=HEAD;f=config.guess" > ./tool/config.guess
  curl "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;hb=HEAD;f=config.sub" > ./tool/config.sub
  LDFLAGS="-Wl,-rpath -Wl,${install_target}" CFLAGS='-fPIC' ./configure --prefix=${install_target} --disable-install-doc --with-opt-dir=${install_target} --without-gmp --enable-load-relative
  make
  make install
popd

tar -zxvf rubygems-2.1.11.tgz
pushd rubygems-2.1.11
  ${install_target}/bin/ruby setup.rb --no-ri --no-rdoc --prefix=${install_target}
popd

${install_target}/bin/gem install bundler-1.9.4.gem --no-ri --no-rdoc
