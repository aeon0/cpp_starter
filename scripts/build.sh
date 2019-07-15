#!/usr/bin/env bash

# In case the script is executed from the script folder cd .. back
# this way the script can be called from script folder or from project root folder
current=`pwd`
current_dir=`basename "$current"`
if [ "$current_dir" == "scripts" ]; then
  cd ..
fi

ROOTDIR=`pwd`
CONFIG="debug"

if [ "$1" == "debug" ] || [ "$1" == "release" ]; then
  CONFIG="$1"
fi

BUILDFOLDER=$ROOTDIR/build/$CONFIG
mkdir -p $BUILDFOLDER
cd $BUILDFOLDER

cmake -DCMAKE_BUILD_TYPE=$CONFIG $ROOTDIR || exit 1

make 
make install