mkdir -p ~/.config

env

cd ~/.config

DOTFILESDIR=~/.config/dotfiles

git clone --branch dev-advanced https://github.com/iamcrash/dotfiles.git

# if [ -d "${DOTFILESDIR}" ] 
# then
#     cd dotfiles
#     git pull --branch dev-advanced https://github.com/iamcrash/dotfiles
# else
#     git clone --branch dev-advanced https://github.com/iamcrash/dotfiles
# fi

cd dotfiles

rsync -avh \
  --no-perms \
  --exclude "old/" \
  --exclude ".DS_Store" \
  --exclude ".git/" \
  . ..

cd $XDG_CONFIG_HOME

source $ZDOTDIR/.zprofile

env

# ZSH=${ZSH} curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | zsh || true
