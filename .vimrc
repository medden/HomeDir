set nocompatible
set cpoptions+=$
set virtualedit=all  
set number

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

set nobackup		" do not keep a backup file, use versions instead
set nowritebackup


set history=50		" keep 50 lines of command line history
set ruler		" show the curset nocompatible
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq
map <Space> <PageDown>


" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("autocmd")
" Drupal *.module and *.install files.
augroup module
autocmd BufRead,BufNewFile *.module set filetype=php
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.test set filetype=php
augroup END
endif
syntax on

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>n :set number!<CR>
