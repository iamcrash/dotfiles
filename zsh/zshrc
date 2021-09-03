# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  tmux
  z
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# Load p10k
[[ ! -f $XDG_CONFIG_HOME/zsh/p10k.zsh ]] || source $XDG_CONFIG_HOME/zsh/p10k.zsh

# Load Iterm2 shell integration
test -e "${XDG_CONFIG_HOME}/iterm2/.iterm2_shell_integration.zsh" \
&& source "${XDG_CONFIG_HOME}/iterm2/.iterm2_shell_integration.zsh"

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

# Load fzf 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###
# History
###
export HISTFILE=~/.zsh_history
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

###
# Aliases
###
# Alias for list open files and send output to fzf
alias lo="lsof -i | fzf"

# Alias for password generator
alias pg="pwgen -s 16 1"

# Alias for ISO timestamp
alias getiso='date +"%Y-%m-%dT%H:%M:%S%z"'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
