#!/bin/bash
WAIT_HOST=10.10.7.10   # PhyMotion Deivce IP addr

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

case $1 in
    start)
	while [[ 1==1 ]]
	do
	    ping -c 1 ${WAIT_HOST} && break
	done
	docker-compose up -d
    ;;	
    stop)
	docker-compose down
    ;;
    restart)
	docker-compose down && docker-compose up -d
    ;;	
esac
