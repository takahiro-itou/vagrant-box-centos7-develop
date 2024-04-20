#! /bin/bash  -xue

boxName='centos7-develop'
box_version='v1.2.0'
boxFile="centos7-develop.${box_version}.box"

# Account Name of Vagrant Cloud.
vcUser='takahiro-itou'

# 所定のディレクトリを、仮想マシンへ転送する用意をする
script_dir="$(dirname "$0")"

project_base_dir=$(readlink -f "${script_dir}/..")
vagrant_dir="${project_base_dir}/vagrant"

env     \
    COPY_CONFIG_DIR='no'                        \
    PROJECT_BASE_DIR="${project_base_dir}"      \
    WORKDIR='/cygdrive/w/Vagrant'               \
    /bin/bash -xue "${vagrant_dir}/common/setup-userdata.sh"    \
    || exit $?

# 仮想マシンを構築する
pushd  vagrant

vagrant  destroy -f  || exit $?
vagrant  up          || exit $?
vagrant  halt

vagrant  package   --output ../${boxFile}  default

popd
set  +x

cat  << _EOF_  1>&2
To add package into box list, run:
_EOF_

cat  << _EOF_
vagrant  box  add  --name ${vcUser}/${boxName}  ${boxFile}
_EOF_
