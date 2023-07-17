VENDOR=Juniper
NAME=vQFX
IMAGE_FORMAT=qcow
IMAGE_GLOB=vqfx*re*.qcow2

#IMAGE=vqfx-20.2R1.10-re-qemu.qcow2

# match versions like:
# vqfx10k-re-15.1X53-D60.vmdk
#VERSION=$(shell echo $(IMAGE) | sed -e 's/^vqfx-\([0-9]\+.[0-9][A-Z]\?[0-9]\?.\?[0-9]\+\?\).*$/\1/')
VERSION=$(shell echo $(IMAGE) | cut -d'-' -f2-3)

-include ../makefile-sanity.include
-include ../makefile.include

# vqfx10k-pfe-20160609-2.vmdk
# TODO: we should make sure we only copy one PFE image (the latest?), in case there are many
docker-pre-build:
	cp vqfx*-pfe*.qcow2 docker/

# TODO: upstream the rest of the fixes to make it work
docker-test-image:
	@echo "Skipping test for $(VENDOR) $(NAME)"
