# ~/.zshrc
# Phil Hart
# Sun Jun 29 20:00:43 CDT 2014

# prompt=%M\>
# RPROMPT='%t'

alias cls='clear'
alias g='vim --remote-silent'
alias lg='ls --group-directories-first'

#####################################################
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pbhart/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# colorful output for vanilla utils
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -al'

alias ..='cd ..'
alias ...='cd ../..'

# print a random integer...
alias rand='echo $RANDOM'

# `mkdir` will create parent dirs as needed and be verbose about it.
alias mkd='mkdir -pv'

# File renaming with `zmv` function.
# Usage:
#   mmv *.c.orig orig/*.c
alias mmv='noglob zmv -vW'


# load the prompt module
autoload -Uz promptinit && promptinit

# sets the custom prompt
PS1="%K{blue}%n%k@%m:%~/ > "
PS2="> "
# RPS1="%(?..(%?%))"
RPS1="%K{blue}%t%k%' %w"
