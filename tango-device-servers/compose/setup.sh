#!/bin/bash

INSTALL_PATH=/opt/tango-ds
SYSTEMD_PATH_FILE=/etc/systemd/system/tango-ds.service

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

SYSTEMD_FILE_CONTENT="[Unit]\nDescription=tango device servers service\nAfter=tango-host.service\n\n[Service]\nType=simple\nExecStart=${INSTALL_PATH}/tango-ds.sh start\n\n[Install]\nWantedBy=multi-user.target\n"

function test_root(){
    UserID=`id -u`
    if [ ${UserID} != 0 ]
    then
	echo "Are you not root?"
	exit
    fi
}

function Install(){
    test_root
    echo "install..."
    mkdir -p $INSTALL_PATH
    install -Dm755 ${SRC_DIR}/tango-ds.sh ${INSTALL_PATH}/tango-ds.sh
    install -Dm644 ${SRC_DIR}/docker-compose.yml ${INSTALL_PATH}/docker-compose.yml 

    echo -e ${SYSTEMD_FILE_CONTENT} > ${SYSTEMD_PATH_FILE}
    systemctl daemon-reload
    systemctl enable tango-ds.service
    
    echo "ok"
    echo "for run exec: systemctl start tango-ds"
}

function Uninstall(){
    test_root
    echo "remove ${INSTALL_PATH}..."
    rm -rf ${INSTALL_PATH}
    rm ${SYSTEMD_PATH_FILE}
    systemctl daemon-reload
    systemctl disable tango-ds.service
    echo "ok"
}

function this_help(){
    echo "$0 <cmd>"
    echo "cmd:"
    echo "     	install"
    echo "     	uninstall"
    echo "	-h --help help"
}


case $1 in
	install)
		Install
		;;
	uninstall)
		Uninstall
		;;
	help)
		this_help
		;;	
	-h)
		this_help
		;;
	--help)
		this_help
		;;
esac

