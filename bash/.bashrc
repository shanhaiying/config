# /etc/bash/bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# Change the window title of X terminals
case ${TERM} in
    xterm*|rxvt*|Eterm|aterm|kterm|gnome*|interix)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
        ;;
    screen)
        PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\033\\"'
        ;;
esac

use_color=false

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
    && type -P dircolors >/dev/null \
    && match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color} ; then
    # Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
    if type -P dircolors >/dev/null ; then
        if [[ -f ~/.dir_colors ]] ; then
            eval $(dircolors -b ~/.dir_colors)
        elif [[ -f /etc/DIR_COLORS ]] ; then
            eval $(dircolors -b /etc/DIR_COLORS)
        fi
    fi

    if [[ ${EUID} == 0 ]] ; then
        PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
    else
        PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
    fi

    alias ls='ls --color=auto'
    alias grep='grep --colour=auto'
else
    if [[ ${EUID} == 0 ]] ; then
        # show root@ when we don't have colors
        PS1='\u@\h \W \$ '
    else
        PS1='\u@\h \w \$ '
    fi
fi

# Try to keep environment pollution down, EPA loves us.
unset use_color safe_term match_lhs

# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
#alias ls=' ls --color'
alias l='ls -aFt'
alias ll='ls -alFht'
alias lg='ls -a|grep'
alias llg='ls -alF|grep'
alias lm='ls --color -alFt|more'
alias df='df -h'
alias free='free -m'
#alias emacs='emacs -nw'
alias halt='sudo halt'
#alias reboot='sudo reboot'
#alias pacman='sudo pacman'
alias wicd='sudo wicd'
alias cdp='cd ..'
alias cdpp='cd ../..'
alias cdppp='cd ../../..'
#PS1='[\u@\h \W]\$ '

#set JAVA_HOME=/usr/lib/jvm/java-6-openjdk
#export JAVA_HOME
#set PATH=$JAVA_HOME/bin:$PATH
#export PATH
#set CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
#export CLASSPATH
#PATH=$PATH:/usr/local/hybus-arm-linux-R1.1/bin

#export JAVA_HOME=$HOME/jre-1.7/
#export PROJECT=arm-dev/toolchain
#export PRJROOT=/home/infinite/$PROJECT
#export TARGET=arm-linux
#export PREFIX=$PRJROOT/tools
#export TARGET_PREFIX=$PREFIX/$TARGET
#export PATH=$PREFIX/bin:$PATH
#cd $PRJROOT
#PATH=$PATH:"/usr/local/hybus-arm-linux-R1.1/bin"
#HOME=/home/infinite
#HOME=/home/work/zhaijiancheng/
#export PATH=$HOME/../opt/bin:$PATH
#export QTDIR=/usr/local/Trolltech/QtEmbedded-4.6.3-arm
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$QTDIR/lib
#export CVSROOT=/home/infinite/CVS/kernel

#export WINDOW_MANAGER="/usr/bin/awesome"
#export AWT_TOOLKIT=MToolkit
#NDKROOT=/opt/android-ndk
#NDKROOT="/opt/android-ndk"
export ALTERNATE_EDITOR=""

#C_INCLUDE_PATH=/opt/android-ndk/platforms/android-8/arch-arm/usr/include
#export C_INCLUDE_PATH
#LIBRARY_PATH=/opt/android-ndk/platforms/android-8/arch-arm/usr/lib/
#export LIBRARY_PATH
export HISTFILESIEZ=20000
export HISTCONTROL="erasedups"
extract () {
   if [  -f $1 ] ; then
       case $1 in
       *.tar.bz2)tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
       *.tar.gz)tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
       *.tar.xz)tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
       *.bz2)bunzip2 $1 && cd $(basename "$1" .bz2) ;;
       *.rar)unrar x $1 && cd $(basename "$1" .rar) ;;
       *.gz)gunzip $1 && cd $(basename "$1" .gz) ;;
       *.tar)tar xvf $1 && cd $(basename "$1" .tar) ;;
       *.tbz2)tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
       *.tgz)tar xvzf $1 && cd $(basename "$1" .tgz) ;;
       *.zip)unzip $1 && cd $(basename "$1" .zip) ;;
       *.Z)uncompress $1 && cd $(basename "$1" .Z) ;;
       *.7z)7z x $1 && cd $(basename "$1" .7z) ;;
       *)echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

#export LC_ALL=zh_CN.UTF-8
#export PERL5LIB=$HOME/perl/lib/perl5/site_perl/5.8.5:$HOME/lib/perl/lib64/perl5/site_perl/5.8.5/x86_64-linux-thread-multi
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib/mysql/lib/mysql
export LESS=-isMrf
export LESSCHARSET=latin1
export HISTCONTROL=erasedups
#export PATH=$HOME/../opt/bin:$PATH
#LANG=zh_CN.GBK
#LANGUAGE=zh_CN.GBK:zh_CN.GB2312:zh_CN
export LANG LANGUAGE
export R_LIBS=$HOME/opt/lib64/R:$HOME/opt/lib64/R/library:$HOME/R:$R_LIBS
export R_SHARE_DIR=$HOME/opt/lib64/R/share
export R_HOME=$HOME/programs/R-2.15.0
#关闭C-s引起的锁屏问题
stty -ixon
alias hls='hadoop fs -ls'
alias hmv='hadoop fs -mv'
alias hget='hadoop fs -get'
alias hput='hadoop fs -put'
alias hrm='hadoop fs -rm'
alias hrmr='hadoop fs -rmr'
alias hmkdir='hadoop fs -mkdir'
alias hcp='hadoop fs -cp'
alias hdu='hadoop fs -du'
alias hcat='hadoop fs -cat'
alias htail='hadoop fs -tail'
alias hkill='hadoop job -kill'

export HADOOP_CLIENT=$HOME/hadoop-client
export HADOOP_HOME=$HADOOP_CLIENT/hadoop
export PATH=$PATH:$HOME/bin:$HADOOP_HOME/bin
export JAVA_HOME=$HOME/java6
