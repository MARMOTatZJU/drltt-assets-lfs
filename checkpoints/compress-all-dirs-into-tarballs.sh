#!/bin/bash

workdir=$(dirname $0)

for p in $(ls -1 ./$workdir/);do
  if [[ -d $p ]];then
    tarball_name=$(basename $p)
    tarball_filename=${tarball_name}.tar.gz
    tar -czvf ${tarball_filename} $p/
    echo "${tarball_filename} created. Original checkpoint removed."
    rm -rf $p
  fi
done
