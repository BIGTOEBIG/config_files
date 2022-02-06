#!/usr/bin/env bash

# ==== Return if not run interactivly ====(solve scp can't used issue)
case $- in
    *i*) ;;
      *) return;;
esac

# == Functions =====================
color_map() {
    local string=" AAA "
    text="\e[0;32;40m"$string"\e[0m"
    for (( i=0; i <6 ; i++ ));do
        printf "Sytle $i\n"
        for (( j=29; j <38 ; j++ ));do
            for (( k=39; k <48 ; k++ ));do
                if [ $j = 29 ]; then
                    if [ $k = 39 ]; then
                        text="    "
                    else
                        text=" $k  "
                    fi
                else
                    if [ $k = 39 ]; then
                        text="$j: "
                    else
                        text="\e[$i;$j;${k}m"$string"\e[0m"
                    fi
                fi
                printf "$text"
            done
            printf "\n"
        done
        printf "\n"
    done
}
function add_path() {
    local add_path="$1"
    if [[ "$PATH" =~ "$add_path" ]] ; then
        echo $add_path is included in \$PATH already !
    else
        if [ "$2" == "-a" ]; then
            PATH="$PATH:$add_path"
        else
            PATH="$add_path:$PATH"
        fi
    fi 
}

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

run_sshd(){
    if [ $(ps -e | grep "sshd" | wc -l) == 0 ]; then
        if [ -f $HOME/.ssh/id_rsa ]; then
            echo "Launching sshd"
            /usr/bin/sshd.exe -h ~/.ssh/id_rsa
        else
            echo "Can't find file id_rsa in path ~/.ssh/, sshd is not enabled."
        fi
    else
        echo "sshd is running."
    fi
}

tree(){
    cmd.exe /C "tree /F /A $1"
}

calc () {
    awk " BEGIN{ print $* ;} " ;
}

# == Alias ========================
# alias find_ssh='nmap.exe -sS -p22 --open 192.168.0.100-110'
# alias python="winpty py -2"
# alias python3="winpty py -3"
# alias python2="winpty py -2"
alias grep="grep --color=auto"
alias la='ls -a'
alias ll='ls -al'
# alias gitall="git add . && git commit && git push"

# == Shell Variables =============
# export ip_vps='204.13.155.160'
PS1='\n'
PS1=$PS1'\[\e[1;32;40m\]\u@\h \[\e[0m\]'
# PS1=$PS1'\[\e[1;31;40m\]\D{%b%d}_\A \[\e[0m\]'
PS1=$PS1'\[\e[1;33;40m\]\w \[\e[0m\]'
PS1=$PS1'\[\e[1;34;40m\]`__git_ps1 "(%s) "`\[\e[0m\]'
# PS1=$PS1'\[\e[1;34;40m\]$`__git_ps1 "(%s) "`\[\e[0m\]'
# PS1=$PS1'\[\e[1;36;40m\]\$ \[\e[0m\]'
PS1=$PS1'\n\[\e[1;35m\]👉 \[\e[0m\]'

export ip_vps='204.13.155.160'

# == Commands ====================
# add_path "/c/Users/lxq/nmap-7.80"
# add_path "/c/Users/lxq/AppData/Local/CentBrowser/Application"
