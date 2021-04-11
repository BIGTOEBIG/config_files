#!/usr/bin/env sh
FRPC_PATH="/home/lxq/Applications/frp/"
FRPC_RC="/home/lxq/work/config_files/frp/frpc.ini"
FRPC="${FRPC_PATH}frpc"

function run_frpc() {
    if $(ps -e | grep "frpc" > /dev/null) ; then
        echo "frpc is running"
    else
        if [ -x $FRPC ]; then
            echo "start to run $FRPC"
            sudo $FRPC -c $FRPC_RC &
        else 
            echo “$FRPC not exist” 
        fi
    fi
}
