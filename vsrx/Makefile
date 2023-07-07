VENDOR=Juniper
NAME=vSRX
IMAGE_FORMAT=qcow
IMAGE_GLOB=*.qcow2
IMAGE=junos-vsrx3-x86-64-20.2R1.10.qcow2

# match versions like:
# 12.1X47-D15.4
VERSION=$(shell echo $(IMAGE) | cut -d - -f2,3)

-include ../makefile-sanity.include
-include ../makefile.include
