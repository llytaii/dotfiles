set fish_greeting

starship init fish | source
zoxide init fish | source

alias cls='clear && ls'
alias ls='exa -l'
alias lt='exa -l --tree --level 2'
alias rman='rusty-man'
alias hx='helix'
# alias yt='youtube-dl --download-archive ./archive.txt --ignore-errors --extract-audio --audio-format mp3  --output "%(title)s.%(ext)s" --yes-playlist (cat url)'

thefuck --alias | source
