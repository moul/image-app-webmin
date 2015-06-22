## -*- docker-image-name: "armbuild/scw-app-webmin:latest" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install webmin dependencies
RUN apt-get update \
 && apt-get upgrade -y -q \
 && apt-get install -y -q \
    apt-show-versions \
    libauthen-pam-perl \
    libio-pty-perl \
    libnet-ssleay-perl \
    libpam-runtime \
    openssl \
    perl \
    python \
 && apt-get clean


# Install webmin
ENV WEBMIN_VERSION=1.760
RUN wget http://prdownloads.sourceforge.net/webadmin/webmin_${WEBMIN_VERSION}_all.deb \
 && dpkg -i webmin_${WEBMIN_VERSION}_all.deb \
 && rm -f webmin_${WEBMIN_VERSION}_all.deb


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
