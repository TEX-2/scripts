#!/bin/bash
# mount host folder ./source and ./build
# to container /source and /build (see buid_into_container.sh)


TAG=tango-build
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

SOURCE=${DIR}/source
BUILD=${DIR}/build

OPTS=-v\ ${SOURCE}:/source\ -v\ ${BUILD}:/build

docker run ${OPTS} ${TAG}

