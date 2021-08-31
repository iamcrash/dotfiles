#####
# ENV VARS
#####
export ZSHF=$HOME/.zshrc
export VIMF=$HOME/.vim_runtime/my_configs.vim
export EMAIL=$(git config user.email)
export DEV_PATH=$HOME/dev


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
 export EDITOR='vim'
else
# export EDITOR='mvim'
export EDITOR='vim'
fi

# Set path for ctags
export PATH=/usr/local/bin/ctags:$PATH

# Vim version
export  PATH=/usr/local/bin/vim:$PATH

# For Homebrew
export PATH="/usr/local/sbin:$PATH"

# Local bin
export PATH=$HOME/bin:$PATH

# NVIM
export PATH=$HOME/neovim/build/bin:$PATH
