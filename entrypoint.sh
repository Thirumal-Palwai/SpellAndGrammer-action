#!/bin/sh
set -ex

Parameters=$1

if [ ! -z "$Parameters" ]
then
vale $Parameters .
else
vale .
fi
