set fish_greeting

starship init fish | source
zoxide init fish | source

alias ls='exa -l'
alias lt='exa -l --tree --level 2'
alias yta='youtube-dl -i --yes-playlist -x --audio-format mp3'

alias update='sudo apt update && sudo apt upgrade && flatpak update && rustup update && cargo install-update -a && youtube-dl --update'
