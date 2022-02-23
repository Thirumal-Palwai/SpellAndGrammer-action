#!/bin/sh
set -e
set -x

Parameters=$1

if [ ! -z "$Parameters" ]
then
vale $Parameters .
else
vale .
fi
