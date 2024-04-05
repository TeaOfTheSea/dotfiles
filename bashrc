#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]]\n[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\@\[$(tput sgr0)\]]\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]: \[$(tput sgr0)\]"

export PATH="/home/monkey/.local/bin/:$PATH"
export PATH="/home/monkey/go/bin/:$PATH"

neofetch

alias ls='ls --color=auto -A'
alias rm='rm -I'
alias cp='cp -i'
alias grep='grep --color=auto'
alias ssh='TERM=xterm-256color ssh'
alias aliases="python ~/Software/PythonScripts/BashrcListAliases/aliases.py"
alias diff="diff --color"
alias find="fzf"

#The next line just says aliases because I use a python script to list all the aliases that I might use at any time because I forget what I name them.
#aliases
alias yippie='paru --skipreview'
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias cliprdr="xclip -selection c -o | fltrdr"
alias find-pkgs="pacman -Q | grep -w"
alias find-aur-pkgs='pacman -Qqm | grep -w'
alias key-issue="sudo pacman -Sy archlinux-keyring && sudo pacman-key --refresh-keys"
alias ping-watch="sudo tcpdump -i enp14s0 icmp and icmp[icmptype]=icmp-echo"
alias timezone="curl https://ipapi.co/timezone"
alias ll="ls -l"
alias temp="redshift -x && redshift"
alias pkg-info="paru -Qii"
alias find-orphans='orphans=$(paru -Qdt | awk '\''{print $1}'\''); if [ -z "$orphans" ]; then echo "No orphans found."; else paru -Qii $orphans; fi'
alias music-conversion='~/Software/MusicYoutube/.venv/bin/python ~/Software/MusicYoutube/main.py'
