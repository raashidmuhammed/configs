BASH_ALIASES=([ls]='ls --color')
BASH_ALIASES=([cd1]='cd ..')
BASH_ALIASES=([cd2]='cd ../..')
BASH_ALIASES=([cd3]='cd ../../..')
BASH_ALIASES=([minicomUSB0]='minicom -D /dev/ttyUSB0 -b 115200')
BASH_ALIASES=([ssh]='ssh -o ServerAliveInterval=5 -o ServerAliveCountMax=1')
PATH=~/mybin:~/.local/bin:~/.local/usr/bin:$PATH

EDITOR=/usr/bin/emacsclient
HISTFILESIZE=1000000
HISTSIZE=5000

export STYLE_DIR=~/projects/stylesheets/trunk
