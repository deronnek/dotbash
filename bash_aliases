# Useful aliases
alias gdb="gdb --args";
# Remove all files in the current directory with size zero (remove zero size files)
alias rmzsf="find . -maxdepth 1 -size 0 -exec rm {} \;"
alias ssh="ssh -X"
alias ls="ls --color=auto"
alias ll="ls -la"
alias rm="rm -i"
alias more="less"
alias perl="perl -w"
alias vi="vim -X"
alias matlab="matlab -nojvm -nosplash"
alias remake="make clean && make"
alias awk="gawk"
alias gnuplot="gnuplot -persist -xrm 'gnuplot*line2Color:blue'"
# Various internet sources (audio streams, weather)
alias wfmt="mplayer http://wttw.ic.llnwd.net/stream/wttw_wfmt_livebroadcast"
alias current="mplayer http://currentstream1.publicradio.org:80"
alias bbc="mplayer mms://livewmstream-ws.bbc.co.uk.edgestreams.net/reflector:48278"
alias usradar="wget http://radar.weather.gov/Conus/RadarImg/latest.gif -O /tmp/uslatest.gif; eog /tmp/uslatest.gif; rm -f /tmp/uslatest.gif"
