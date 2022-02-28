#!/bin/sh
set -ex

Parameters=$1

ls -larth /root
env
pwd

if [ ! -z "$Parameters" ]
then
vale $Parameters .
else
vale .
fi
