#!/bin/sh

# mk-livestatus paths
eondir="/srv/eyesofnetwork"
linkdir="${eondir}/mk-livestatus"

# create eon directories
mkdir -p ${linkdir}/{bin,lib}

ln -sf /usr/bin/unixcat ${linkdir}/bin/unixcat
ln -sf /usr/lib64/check_mk/livestatus.o ${linkdir}/lib/livestatus.o
