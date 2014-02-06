set -o vi

alias cls='clear'
alias g='vim --remote-silent'

export PATH=$PATH:~/bin

# remap caps lock to <ctrl> key
xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keysym Caps_Lock = Control_L'
xmodmap -e 'add Control = Control_L'



