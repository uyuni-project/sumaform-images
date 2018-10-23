FROM hashicorp/packer:1.3.1

MAINTAINER Silvio Moioli "moio@suse.de"

RUN apk update && apk add qemu-system-x86_64=2.10.1-r3 libvirt=3.9.0-r1 qemu-img=2.10.1-r3

RUN wget https://github.com/tcnksm/ghr/releases/download/v0.12.0/ghr_v0.12.0_linux_amd64.tar.gz && tar xf ghr_* --strip-components=1 -C /usr/bin
