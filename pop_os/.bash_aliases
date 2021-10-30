alias yta='youtube-dl --download-archive ./archive.txt --ignore-errors --extract-audio --audio-format mp3  --output "%(title)s.%(ext)s" --yes-playlist'
alias ytu='yta $(cat url)'
