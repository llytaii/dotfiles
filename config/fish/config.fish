set fish_greeting
set -gx XKB_DEFAULT_LAYOUT 'de'
#set -gx XKB_DEFAULT_LAYOUT 'eu'

starship init fish | source
zoxide init fish | source

alias ls='exa -l'
alias lt='exa -l --tree --level 2'
alias hx='helix'

alias rpi3='ssh llytaii@192.168.188.46'
#alias yt_music='yt-dlp --download-archive ./archive.txt --ignore-errors --extract-audio --audio-format mp3  --output "%(title)s.%(ext)s" --yes-playlist (cat url)'

function download_playlists
    set -l subdirs (find . -type d)
    for subdir in $subdirs
        if test -f "$subdir/url"
            echo "Downloading playlist in $subdir..."
            pushd $subdir > /dev/null
            yt-dlp --download-archive ./archive.txt --ignore-errors --extract-audio --audio-format mp3  --output "%(title)s.%(ext)s" --yes-playlist -a url
            popd > /dev/null
        end
    end
end

alias yt_music='download_playlists'

function yy
	set tmp (mktemp -t "yazi-cwd.XXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
