#!/bin/sh
set -e
#cvs status TmfBase| grep ^File | grep -v Up-to-date
mkdir tmp
cd tmp
cvs -d :ext:sparky:/usr/local/CVS export -N -kv -r HEAD TmfBase/Hapy
cvs -d :ext:sparky:/usr/local/CVS export -N -kv -r HEAD TmfBase/xstd
rsync -av tmp/TmfBase .
