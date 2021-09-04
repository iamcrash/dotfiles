# ~/.zshenv should only be a one-liner that sources this file
# echo "source ~/.config/zsh/.zshenv" >| ~/.zshenv

export ZDOTDIR=~/.config/zsh

# Set XDG dirs
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_RUNTIME_DIR=~/.xdg
export XDG_STATE_HOME=~/.local/state
export XDG_LOCAL_BIN=~/.local/bin

if [[ "$OSTYPE" == darwin* ]]; then
  export XDG_DESKTOP_DIR=~/Desktop
  export XDG_DOCUMENTS_DIR=~/Documents
  export XDG_DOWNLOAD_DIR=~/Downloads
  export XDG_MUSIC_DIR=~/Music
  export XDG_PICTURES_DIR=~/Pictures
  export XDG_VIDEOS_DIR=~/Videos
fi

export SHELL_SESSIONS_DISABLE=1

[[ -d ~/.config/dotfiles ]] && export DOTFILES=~/.config/dotfiles

export XDG_DIRS=($ZDOTDIR $XDG_CACHE_HOME $XDG_CONFIG_HOME $XDG_DATA_HOME $XDG_LOCAL_BIN $XDG_RUNTIME_DIR $XDG_STATE_HOME)
