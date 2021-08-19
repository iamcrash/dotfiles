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
