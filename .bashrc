#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Java
JAVA_HOME="/opt/corretto-21"
MAVEN_HOME="/opt/maven"
GRADLE_HOME="/opt/gradle"
PATH="$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin"

