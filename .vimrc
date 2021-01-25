set nocompatible              " be iMproved, required
filetype plugin on
set rtp+=~/.vim
so ~/.vim/plugins.vim

let mapleader = ','

"Better editor"
syntax enable
set shiftwidth=2
set softtabstop=2
set smartindent
set number
set linespace=15

set wrap
set linebreak
set nolist
set formatoptions-=t

set nofoldenable

set backspace=indent,eol,start

"Make it pretty"
colorscheme atom-dark
set guifont=Fira_Code_Medium:h9
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=T

set renderoptions=type:directx
set encoding=utf-8

set fillchars+=vert:/ 
"Make searching better"
set hlsearch
set incsearch

"Split managment"
set splitbelow
set splitright
nmap <C-Left>  <C-W><C-H>
nmap <C-Down>  <C-W><C-J>
nmap <C-Up>    <C-W><C-K>
nmap <C-Right> <C-W><C-L>

nmap <C-,>     <C-W>,
nmap <C-.>     <C-W>.

nmap <C-S-T>	    :tabnew<cr>
nmap <C-S-Left>	    :tabprevious<cr>
nmap <C-S-Right>    :tabnext<cr>
nmap <C-S-C>	    :tabc<cr>

"Mappings"
nmap <Leader>ev :tabedit $MYVIMRC<cr>		  "edit vimrc"
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>	  "edit the plugins"
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>cs :nohlsearch<cr>			  "clear search"
nmap <Leader>ct :tabclose<cr>			  "close the tab"
nmap <Leader>sv :so ~/.vimrc<cr>		  "Source the VimRC file"
nmap <Leader>pt :CtrlPTag<cr>

"Plugin Config"

"    CtrlP
nmap <C-F> :CtrlPBufTag<cr>			  "Search functions or variables in files"

"    NerdTree
let NERDTreeHijackNetrw = 0
nmap <S-T> :NERDTreeToggle<cr>

"Other imports"
so ~/.vim/laravel.vim

"auto-commands"
augroup autosourcerc
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END

augroup autosourceplugins
        autocmd!
        autocmd BufWritePost plugins.vim source %
augroup END
