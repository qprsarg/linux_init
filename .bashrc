# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

#scb-proxy -l BLUECOAT_SG_CBP
export http_proxy=http://10.65.1.33:8080/
export https_proxy=http://10.65.1.33:8080/

source /home/sabuser/virtualenvs/venv/bin/activate

if [ "$TERM" = "xterm" ] || [ "$TERM" = "xterm-256color" ]
then
    export TERM=xterm-256color
    export HAS_256_COLORS=yes
fi

if [ "$TERM" = "screen" ] && [ "$HAS_256_COLORS" = "yes" ]
then
    export TERM=screen-256color
fi

powerline-daemon -q
source /home/sabuser/opt/powerline/bindings/bash/powerline.sh
