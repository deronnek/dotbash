source ~/.bash_aliases
source /etc/bash_completion

export PATH="/home/deronne/bin:/home/deronne/local/bin:/home/deronne/dotenv/gitbin:"$PATH
export LD_LIBRARY_PATH="/usr/lib:/home/deronne/local/lib"

function pss {
  ps aux | grep -Ei "($@|%CPU)";
}

function scatter {
  echo plot \'$1\' | gnuplot -persist -
}

function lss {
  ls | grep -i $@;
}

function gkgcc {
  echo "gcc -Wall -I/home/deronne/svn/GKlib/trunk -c $1"
  gcc -g -Wall -I/home/deronne/svn/GKlib/trunk -c $1; 
  echo "gcc -Wall -L/home/deronne/svn/GKlib/builds/`uname`-`uname -m | sed "s/\\ /_/g"` `basename $1 .c`.o -lGKlib"
  gcc -g -Wall -L/home/deronne/svn/GKlib/builds/`uname`-`uname -m | sed "s/\\ /_/g"` `basename $1 .c`.o -lGKlib
}

#export PS1=" \[\e[0m\]"
if [ "$TERM" = "linux" ]
then
    # We're on the system console or maybe telnetting in
    export PS1="\[\e[32;1m\]\u@\H > \[\e[0m\]"
else
    # We're not on the console, assume an xterm
    #export PS1="\[\e]2;\u@\H\w\a\[\e[32;40m\]\H:\[\e[34;40m\]\W\[\e[0m\]> \[\e[0m\]" 
    #export PS1="\[\e[32;40m\]\H:\[\e[34;40m\]\W\[\e[0m\]> \[\e[0m\]"
    export PS1="\[\e[32;40m\]\H:\[\e[34;1m\]\W\[\e[0m\]> \[\e[0m\]"
fi

export FIGNORE=.o
export LS_COLORS="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:"

# boo, stuff for stupid stack programs.
ulimit -s unlimited
