#!/bin/bash

SOURCE=/source
BUILD=/build

cd ${BUILD}
/usr/bin/cmake ${SOURCE} 
make -j4

