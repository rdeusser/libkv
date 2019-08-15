#!/bin/bash

if [  $# -gt 0 ] ; then
    ETCD_VERSION="$1"
else
    ETCD_VERSION="3.3.13"
fi

curl -L https://github.com/etcd-io/etcd/releases/download/v$ETCD_VERSION/etcd-v$ETCD_VERSION-linux-amd64.tar.gz -o etcd-v$ETCD_VERSION-linux-amd64.tar.gz
tar xzvf etcd-v$ETCD_VERSION-linux-amd64.tar.gz
mv etcd-v$ETCD_VERSION-linux-amd64 etcd
