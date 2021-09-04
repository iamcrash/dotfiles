# if [ -z "${XDG_CONFIG_HOME}" ]; then
#   export XDG_CONFIG_HOME=~/.config
# fi
# 
# if [ -z "${XDG_CACHE_HOME}" ]; then
#   # defines the base directory relative to which user-specific configuration files should be stored
#   export XDG_CACHE_HOME=~/.cache
# fi
# 
# if [ -z "${XDG_DATA_HOME}" ]; then
#   # single base directory relative to which user-specific data files should be written
#   export XDG_DATA_HOME=~/.local/share
# fi
# 
# if [ -z "${XDG_STATE_HOME}" ]; then
#   # defines the base directory relative to which user-specific state files should be stored
#   export XDG_STATE_HOME=~/.local/.state
# fi
# 
# if [ -z "${XDG_RUNTIME_HOME}" ]; then
#   # defines the base directory relative to which user-specific non-essential runtime files and other file objects (such as sockets, named pipes, ...) should be stored.
#   export XDG_RUNTIME_DIR=/run/user/$UID
# fi
# 


# Path to your oh-my-zsh installation.
export ZSH="$XDG_DATA_HOME/oh-my-zsh"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$XDG_CONFIG_HOME/zsh/custom

export TZ=America/Chicago

export LANGUAGE=en_US.en

export LANG=en_US.en.UTF-8

export LC_ALL=en_US.UTF-8

export TERM=xterm-256color

export SHELL=zsh

export WORKSPACE=~/workspace

export NODE_ENVIRONMENT=development

export NEOVIM_DIR="${XDG_DATA_HOME}/neovim"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='lvim'
else
  export EDITOR='lvim'
fi

# Load Rust cargo
[[ ! -f $HOME/.cargo/env ]] || source $HOME/.cargo/env

# Load nvm
export NVM_DIR="$XDG_CONFIG_HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$XDG_BIN_HOME:$PATH

IS_ZPROFILE=true
