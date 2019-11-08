#!/bin/bash

INSTALL_PATH=/opt/tango-host
SYSTEMD_PATH_FILE=/etc/systemd/system/tango-host.service

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

SYSTEMD_FILE_CONTENT="[Unit]\nDescription=tango-host service\nAfter=docker.service\n\n[Service]\nType=simple\nExecStart=${INSTALL_PATH}/tango-host.sh start\n\n[Install]\nWantedBy=multi-user.target\n"

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
    cp -r ${SRC_DIR}/db-data ${INSTALL_PATH}
    chown root:root -R ${INSTALL_PATH}/db-data
    chmod 700 ${INSTALL_PATH}/db-data/tango
    chmod 640 ${INSTALL_PATH}/db-data/tango/*
    install -Dm755 ${SRC_DIR}/tango-host.sh ${INSTALL_PATH}/tango-host.sh
    install -Dm644 ${SRC_DIR}/docker-compose.yml ${INSTALL_PATH}/docker-compose.yml 

    echo -e ${SYSTEMD_FILE_CONTENT} > ${SYSTEMD_PATH_FILE}
    systemctl daemon-reload
    systemctl enable tango-host.service
    
    echo "ok"
    echo "for run exec: systemctl start tango-host"
}

function Uninstall(){
    test_root
    echo "remove ${INSTALL_PATH}..."
    rm -rf ${INSTALL_PATH}
    rm ${SYSTEMD_PATH_FILE}
    systemctl daemon-reload
    systemctl disable tango-host.service
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

