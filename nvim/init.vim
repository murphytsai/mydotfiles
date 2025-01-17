if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'

Plug 'ekalinin/Dockerfile.vim'

Plug 'airblade/vim-gitgutter'
Plug 'jeffkreeftmeijer/neovim-sensible'

call plug#end()


set noerrorbells                " No beeps
set number                      " Show line numbers
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.

set autoread
set ignorecase

let g:indentLine_leadingSpacChar='·'
let g:indentLine_leadingSpaceEnabled='1'

" Disable quote concealing in JSON files. Overrides indentLevel default.
let g:vim_json_conceal=0
