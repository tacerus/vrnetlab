FROM registry.opensuse.org/isv/suseinfra/containers/containerfile/vrnetlab-base:latest
MAINTAINER Georg Pfuetzenreuter <georg.pfuetzenreuter@suse.com>

ARG IMAGE
COPY $IMAGE* /opt/images/
COPY launch.py /usr/local/bin/

# needed for /dev/net/tun
USER root
