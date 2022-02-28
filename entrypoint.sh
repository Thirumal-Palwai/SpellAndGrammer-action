#!/bin/sh
set -ex

Parameters=$1

mv /root/.vale.ini $HOME

if [ ! -z "$Parameters" ]
then
vale $Parameters .
else
vale .
fi
