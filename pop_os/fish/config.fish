set fish_greeting

starship init fish | source
zoxide init fish | source

alias ls='exa -l'
alias lt='exa -l --tree --level 2'
alias g='tuxi'
alias yt='youtube-dl --download-archive ./archive.txt --ignore-errors --extract-audio --audio-format mp3  --output "%(title)s.%(ext)s" --yes-playlist (cat url)'
# alias ytr='for file in **/url; cd (dirname $file); yt; cd -; end'

alias update='sudo apt update && sudo apt upgrade && flatpak update && rustup update && cargo install-update -a && youtube-dl --update'
