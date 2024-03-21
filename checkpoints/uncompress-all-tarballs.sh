#!/bin/bash

workdir=$(dirname $0)

for tarball in $(ls -1 ./$workdir/*.tar.gz);do
    tar -xzvf ${tarball}
    echo "${tarball} uncompressed."
done
