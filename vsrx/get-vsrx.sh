#!/bin/bash

IMAGE=$(ls temp/ffp* >/dev/null 2>&1)

if [ ! -f temp/*.qcow2 ]; then

  echo -e "Creating temp directory\n"
  mkdir temp

  echo -e "Downloading file\n"
  wget -nc -O temp/virtualbox.box https://app.vagrantup.com/juniper/boxes/ffp-12.1X47-D15.4-packetmode/versions/0.5.0/providers/virtualbox.box

  echo -e "Extracting Vagrant Box\n"
  tar -xf temp/virtualbox.box -C temp

  echo -e "Converting VMDK to QCOW2\n"
  qemu-img convert -f vmdk -O qcow2 temp/packer-virtualbox-ovf-1427461878-disk1.vmdk temp/ffp-12.1X47-D15.4-packetmode.qcow2

  echo -e "Moving QCOW2 image to main folder\n"
  mv temp/*.qcow2 .

  echo -e "Deleting temp directory\n"
  rm -r temp

else

  echo "Image $IMAGE exists. Exiting."

fi
