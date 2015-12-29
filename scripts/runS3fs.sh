#!/bin/bash -e

MOUNTDIR=${MOUNTDIR:-/home/shared/s3}

mkdir -p $MOUNTDIR
mkdir -p /tmp
s3fs $BUCKETNAME $MOUNTDIR \
    -o use_cache=/tmp \
    -o allow_other \
    -o umask=0002 \
    -o use_rrs \
    -f \
    $MOUNTOPTS

