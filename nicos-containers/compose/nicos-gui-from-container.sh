#!/bin/bash
TAG=pshcyrill/nicos:latest
BIN=/usr/src/nicos/bin/nicos-gui
#BIN=

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

PATH_TO_INSTRUMENT=${DIR}/nicos_pnpi
PATH_TO_DATA=${DIR}/data
PATH_TO_LOG=${DIR}/log

INSTRUMENT=nicos_pnpi.tex2

xhost +local:
docker run -e INSTRUMENT=${INSTRUMENT} -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ${PATH_TO_INSTRUMENT}:/usr/src/nicos/nicos_pnpi -v ${PATH_TO_DATA}:/data -v ${PATH_TO_LOG}:/log --network host -ti ${TAG} ${BIN}
