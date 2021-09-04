cd $HOME \
&& mkdir -p ~/.config \
&& cd ~/.config \
&& git clone --branch dev-advanced https://github.com/iamcrash/dotfiles \
&& cd dotfiles \
&& rsync -avh \
  --no-perms \
  --exclude "old/" \
  --exclude ".DS_Store" \
  --exclude ".git/" \
  . .. \
&& cd .. \
&& source zsh/.zprofile \
&& env > test.env

# ZSH=${ZSH} curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | zsh || true
