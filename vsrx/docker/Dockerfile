FROM opensuse/leap
MAINTAINER Georg Pfuetzenreuter <georg.pfuetzenreuter@suse.com>

RUN set -eu ; zypper rr repo-non-oss repo-update-non-oss repo-openh264 repo-backports-update ; zypper -n in --no-recommends \
    bridge-utils \
    iproute2 \
    python3-ipy \
    socat \
    qemu-tools qemu-kvm \
 ; zypper -n cc -a ; rm -r /var/{cache,log}/* \
 ; useradd -mU geeko ; mkdir /opt/images ; chown geeko /opt/images

ARG IMAGE
COPY $IMAGE* /opt/images/
COPY *.py /usr/local/bin/

EXPOSE 22 830 5000 10000-10099

USER geeko
HEALTHCHECK CMD ["/usr/local/bin/healthcheck.py"]
ENTRYPOINT ["/usr/local/bin/launch.py"]
