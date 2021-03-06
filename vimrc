" http://mislav.uniqpath.com/2011/12/vim-revisited/

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set title
set number

"" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"" Vim Plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'tpope/vim-rails.git'
Bundle 'carlhuda/janus.git'
Bundle 'mfukar/robotframework-vim.git'
Bundle 'tejr/vim-nagios.git'
Bundle 'evanmiller/nginx-vim-syntax.git'
