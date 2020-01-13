#! /bin/bash  -xue

echo  Provisioning $HOSTNAME

sudo  timedatectl  set-timezone Asia/Tokyo

sudo  yum  groupinstall -y  "Base"  "Development Tools"
sudo  yum  install -y  cmake  doxygen  emacs  mercurial
