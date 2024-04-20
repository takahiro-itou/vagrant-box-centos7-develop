#! /bin/bash  -xue

# clean up
sudo  yum  clean  all
sudo  rm  -rf  /var/log/*
sudo  rm  -rf  /tmp/*
sudo  dd  if=/dev/zero  of=zero  bs=4k  || :
sudo  rm  -f   zero

history  -c
