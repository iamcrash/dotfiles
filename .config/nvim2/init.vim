" # If transition from vim to nvim
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
"

call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
call plug#end()
"Config Section


" Theme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

