"  PATHOGEN 
call pathogen#infect()

filetype plugin indent on

set nocompatible
set cpoptions+=$
set virtualedit=all  
set number
set cursorline

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

"key mappgins
let mapleader = ","
nnoremap ; :


nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>n :set number!<CR>
nmap O[ :bn<CR>
nmap OZ :bp<CR>
nmap OY :bd<CR>                                 

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null


"nerdcomment
"nmap <silent><leader>/ :NERDComToggleComment<CR>
"nmap <leader>mm <plug>NERDCommenterComment
nmap  <leader>m <plug>NERDCommenterToggle

"nerdtree
"nmap <leader>o :NERDTree<CR>
nmap <leader>e :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'php', 'css', 'html'],
                           \ 'passive_filetypes': ['puppet'] }  


"Fugitive status line
set statusline+=%{fugitive#statusline()}
