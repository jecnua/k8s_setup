#!/bin/bash
#

VERSION='2.2.1'
if [ $# -ne 0 ]
then
  VERSION='$1'
fi

cd /opt || exit
wget "https://kubernetes-helm.storage.googleapis.com/helm-v$VERSION-linux-amd64.tar.gz"
mkdir -p "helm-v$VERSION"
tar -zxvf "helm-v$VERSION-linux-amd64.tar.gz" -C "helm-v$VERSION"
if [[ -f /opt/"helm-v$VERSION"/linux-amd64/helm ]]
then
  ln -fs /opt/"helm-v$VERSION"/linux-amd64/helm /usr/local/bin/helm
else
  echo "File to link not found"
fi
