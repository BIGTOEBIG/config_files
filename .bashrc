alias python="winpty py -2"
alias python3="winpty py -3"
alias python2="winpty py -2"
alias grep="grep --color=auto"
alias la='ls -a'
alias ll='ls -al'
alias gitall="git add . && git commit && git push"

# -- Add Path ---begin------------------
function add_path() {
    Add=$1
    if [[ $PATH != *$Add* ]]
    then
        export PATH=$Add:$PATH
    fi 
}
add_path "/c/Users/lxq/nmap-7.80"
add_path "/c/Users/lxq/AppData/Local/CentBrowser/Application"
alias find_ssh='nmap.exe -sS -p22 --open 192.168.0.100-110'
function func() {
    echo \$IFS
    echo $IFS | od -b  
    echo Name of shell script   '$0': $0
    echo Num of arguments       '$#': $#
    echo All arguments          '$@': $@
    echo All arguments          '$*': $*
    echo All arguments in      \"\$@\" :  "$@"
    echo All arguments in      \"\$*\" :  "$*"
    echo PS id                  '$$': $$
    echo The last bg PS id      '$!': $!
    echo Current shell option   '$-': $-
    echo Show the last exec return '$?': $?
}
export ip_vps='204.13.155.160'
