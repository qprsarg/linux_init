# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin:$HOME/go/bin

export PATH

export GOROOT=/home/sabuser/go

if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
