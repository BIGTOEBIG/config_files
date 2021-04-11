#!/usr/bin/env sh
PROC_RC="/home/lxq/work/config_files/mini-httpd/mini-httpdrc"
PROC="mini-httpd"

function run_mini_httpd() {
    if $(ps -e | grep "$PROC" > /dev/null) ; then
        echo "$PROC is running"
    else
        if [ -f $PROC_RC ] ; then
            echo "start to run $PROC"
            sudo $PROC -C $PROC_RC &
        else
            echo "configure $PROC_RC not exist"
        fi  
    fi
}
