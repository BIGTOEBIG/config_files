CUR_PATH=$(realpath $0)

function run_dictd() {
    #dictdconfig  # run this when need to 
    if $(ps -e | grep "dictd" > /dev/null) ; then
        echo "dictd is running"
    else
        sudo dictd -c $CUR_PATH/dict/dictd.conf
    fi
    if [ -f ${HOME}/.dictrc ]; then
        echo "$HOME/.dictrc exist"
    else
        echo "copy $CUR_PATH/dict/dictrc to ${HOME}/.dictrc"
        cp $CUR_PATH/dict/dictrc ${HOME}/.dictrc
    fi
}
