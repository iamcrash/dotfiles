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
