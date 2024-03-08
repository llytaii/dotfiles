set fish_greeting
set -gx XKB_DEFAULT_LAYOUT 'de'

starship init fish | source
zoxide init fish | source

alias ls='exa -l'
alias lt='exa -l --tree --level 2'
alias hx='helix'

alias rpi3='ssh llytaii@192.168.188.46'
alias yt_music='yt-dlp --download-archive ./archive.txt --ignore-errors --extract-audio --audio-format mp3  --output "%(title)s.%(ext)s" --yes-playlist (cat url)'
