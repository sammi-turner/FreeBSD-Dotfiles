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
export PATH="$HOME/.local/lib:$PATH"
export PATH="$HOME/.local/bin:$PATH"

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# ls commands
alias dots='ls -a | sort'
alias lst='ls | sort'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# GNU compile ncurses C
alias ncu='gcc main.c -lncurses'

# GNU compile ncurses C++20, first error only
alias feo='g++ main.cpp -lncurses -flto -O -std=c++20 -Wfatal-errors'

# GNU compile ncurses C++20
alias neo='g++ main.cpp lncurses -flto -O -std=c++20'

# Run binary with the default name
alias run='./a.out'

# Python
alias pa='python app.py'

# Edit this file
alias brc='vim ~/.bashrc'

# Clear screen
alias cls='clear'

# Change ownership from root to user
alias cho='sudo chown -R $USER'

# Ranger
alias rr='ranger'
alias rs='sudo ranger'

# Apt commands (Debian or Ubuntu based distros)
alias upd='sudo apt update'
alias upg='sudo apt upgrade'
alias ai='sudo apt install'
alias ap='sudo apt purge'

# Pacman commands (Arch based distros)
alias sps='sudo pacman -S --noconfirm'
alias spr='sudo pacman -R --noconfirm'
alias sprc='sudo pacman -R --cascade'
alias up='sudo pacman -Syyu --noconfirm'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias list='pacman -Q > package_list.txt'

# For pkgbuilds from the Arch user repository
alias mp='makepkg -sirc --noconfirm'

# YouTube Downloader
alias ydl='youtube-dl'
alias ydl-aac="youtube-dl --extract-audio --audio-format aac "
alias ydl-flac="youtube-dl --extract-audio --audio-format flac "
alias ydl-m4a="youtube-dl --extract-audio --audio-format m4a "
alias ydl-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias ydl-opus="youtube-dl --extract-audio --audio-format opus "
alias ydl-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias ydl-wav="youtube-dl --extract-audio --audio-format wav "
alias ydl-best="youtube-dl -f bestvideo+bestaudio "

# Clone a repo
alias gcl='git clone'
alias nd='npx degit'

# Use Makefile to install
alias mci='sudo make clean install'

# Start up with .xinitrc
alias sx='startx'

# Shut-down from terminal
alias sn='sudo shutdown now'

# Reboot from terminal
alias sr='sudo reboot'

# Reload this file
alias sb='source .bashrc'
