# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
PS1=' \w \$ '
RANGER_LOAD_DEFAULT_RC=FALSE
EDITOR=vim
PAGER=vim
export VISUAL EDITOR=vim
export EDITOR

export PATH="/usr/local/bin:$PATH"

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

# Pkg
alias pkgi='doas pkg install'
alias pkgr='doas pkg remove'

# ls commands
alias dots='ls -a | sort'
alias lst='ls | sort'

# Edit this file
alias brc='vim ~/.bashrc'

# Clear screen
alias cls='clear'

# Change ownership from root to user
alias cho='sudo chown -R $USER'

# Clone a repo
alias gcl='git clone'
alias nd='npx degit'

# Use Makefile to install
alias mci='doas make clean install'

# Reload this file
alias sb='source .bashrc'
