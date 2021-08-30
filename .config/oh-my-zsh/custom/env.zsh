export XDG_CACHE_HOME=$HOME/.cache
# defines the base directory relative to which user-specific configuration files should be stored
export XDG_CONFIG_HOME=$HOME/.config
# single base directory relative to which user-specific data files should be written
export XDG_DATA_HOME=$HOME/.local/share
# defines the base directory relative to which user-specific state files should be stored
export XDG_STATE_HOME=$HOME/.state
# defines the base directory relative to which user-specific non-essential runtime files and other file objects (such as sockets, named pipes, ...) should be stored.
export XDG_RUNTIME_DIR=/run/user/$UID

 #####
 # FZF
 #####
 # SET default fzf command to ripgrep
 # export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
 #
 # Print each file that would be searched and follow symbolic links and glob     pattern do not
 # search in node_modules and .git and pipe to fzf
 # export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{node_modules,. git}" | fzf'
 export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{node_modules,.   git}"'
 export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

 # If you dont want to ignore vcs files
 # export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
 # export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
 #
# Function to use rga and fzf
rga-fzf() {
	RG_PREFIX="rga --files-with-matches"
	local file
	file="$(
		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap"
	)" &&
	echo "opening $file" &&
	xdg-open "$file"
} 
# If fzf.zsh, load
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###
# History
###
export HISTFILE=$HOME/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=$HISTFILESIZE
export SAVEHIST=$HISTSIZE
# Immediate append to history
setopt INC_APPEND_HISTORY
# export HISTTIMEFORMAT="[%F %T] "
# Add timestamp to history
# setopt EXTENDED_HISTORY
# No duplicates
setopt HIST_IGNORE_ALL_DUPS
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# Alias list open files and send output to fzf
alias lo="lsof -i | fzf"

###
# NVM
###
 export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

###
# P10k
###
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ${XDG_CONFIG_HOME}/p10k.zsh ]] || source ${XDG_CONFIG_HOME}/p10k.zsh

###
# Password generator
###
alias pg="pwgen -s 16 1"

# Alias ISO timestamp
alias getiso='date +"%Y-%m-%dT%H:%M:%S%z"'

# Function to safely append to file with iso time
append(){
    prefix="\n\n\n/*\n$(getiso)\n*/\n"
    if [[ "$1" = "pbpaste" ]]; then
        echo "${prefix}$(pbpaste)" >> $2
    else
        echo "${prefix}$1" >> $2
    fi
}

# explicit runtime to neovim nightly
# VIMRUNTIME=runtime ./build/bin/nvim

# 
# VIMRUNTIME=$HOME/neovim/runtime $HOME/neovim/build/bin/nvim
