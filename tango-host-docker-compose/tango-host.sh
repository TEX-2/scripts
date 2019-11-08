#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}

case $1 in
	start)
		docker-compose up -d
	;;	
	stop)
		docker-compose down
	;;
	restart)
		docker-compose down && docker-compose up -d
	;;	
esac
