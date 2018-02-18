#!/bin/bash -ex

hugo_dir=./hugo
hugo_bin=${hugo_dir}/hugo
theme_name=casper-two
public_dir=./public

if [ ! -e ${hugo_bin} ]; then
    mkdir ${hugo_dir} ; pushd ${hugo_dir}
    hugo_tar=hugo.tar.gz
    curl -sL https://github.com/gohugoio/hugo/releases/download/v0.30.2/hugo_0.30.2_Linux-64bit.tar.gz -o ${hugo_tar}
    tar zxvf ${hugo_tar}
    popd
fi

${hugo_bin} -t ${theme_name}
