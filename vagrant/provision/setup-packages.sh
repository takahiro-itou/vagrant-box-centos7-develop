#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  yum  update -y
sudo  yum  groupinstall -y  "Base"  "Development Tools"
sudo  yum  install -y  cmake  emacs  git  mercurial  \
    clang  doxygen  screen

sudo  mkdir  -p    /tools
sudo  chmod  1777  /tools
