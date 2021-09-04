mkdir -p ~/.config

XDG_CONFIG_HOME=~/.config
DOTFILESDIR=~/.config/dotfiles
GITURL=https://github.com/iamcrash/dotfiles.git

cd $XDG_CONFIG_HOME

git clone --branch dev-advanced $GITURL

# if [ -d "${DOTFILESDIR}" ] 
# then
#     cd dotfiles
#     git pull --branch dev-advanced https://github.com/iamcrash/dotfiles
# else
#     git clone --branch dev-advanced https://github.com/iamcrash/dotfiles
# fi

cd $DOTFILESDIR

rsync -avh \
  --no-perms \
  --exclude "old/" \
  --exclude ".DS_Store" \
  --exclude ".git/" \
  . ..

ZDOTDIR=~/.config/zsh
source ~/.config/zsh/.zprofile

env > test.env

# ZSH=${ZSH} curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | zsh || true
