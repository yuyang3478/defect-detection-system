#!/bin/bash
#build and run on linux :
#
#On ubuntu, PixelAnnotationTool need this pacakage (OpenCV and Qt5.9.1):

sudo apt-get install mesa-common-dev
sudo apt-get install libopencv-dev python-opencv

ROOT=`pwd`/..
ANNO_ROOT=${ROOT}/annotation
cd ${ANNO_ROOT}/PixelAnnotation/x64
rm -r ./*
cmake -DQT5_DIR=${ANNO_ROOT}/Qt5.9.1/5.9.1/gcc_64/lib/cmake -G "Unix Makefiles" ..
make -j4
cp PixelAnnotationTool ${ANNO_ROOT}