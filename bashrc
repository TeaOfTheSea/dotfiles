#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]]\n[\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\@\[$(tput sgr0)\]]\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]: \[$(tput sgr0)\]"

neofetch

alias ls='ls --color=auto -A'
alias ssh='TERM=xterm-256color ssh'
alias aliases="python ~/Software/PythonScripts/BashrcListAliases/aliases.py"

#The next line just says aliases because I use a python script to list all the aliases that I might use at any time because I forget what I name them.
#aliases
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias cliprdr="xclip -selection c -o | fltrdr"
alias find-pkgs="pacman -Q | grep -w"
alias find-aur-pkgs='pacman -Qqm | grep -w'
alias key-issue="sudo pacman -Sy archlinux-keyring && sudo pacman-key --refresh-keys"
alias ping-watch="sudo tcpdump -i enp2s0 icmp and icmp[icmptype]=icmp-echo"
alias newNet="python ~/Software/PythonScripts/NetnsCreator/newNet.py"
alias TTUnet="python ~/Software/PythonScripts/TtuNet/vpnConnect.py"
alias timezone="curl https://ipapi.co/timezone"
alias lvim="/home/monkey/.local/bin/lvim"
alias ll="ls -l"
