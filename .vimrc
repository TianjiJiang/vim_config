
set nocompatible	" don't bother with vi compatibility "
set visualbell t_vb=	" turn off error beep/flash "
set t_vb= 
set timeoutlen=500
set t_Co=256
set mousehide "hide the mouse while typing"
set mouse= " disable the mouse in any mode"

"encoding"
set encoding=utf-8  
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8 
set fileformats=unix,dos,mac  
set formatoptions+=m	"use '=' to set type"
set formatoptions+=B 

" dieplay "
set ruler 	" show the current row and column "
set cursorcolumn " highlight th colume/row where the cursor in
set cursorline
set nu 		" show line numbers "
set nowrap      " don't wrap to show the words out of screen "
set showmode 	" display current modes "
set showcmd 	" display incomplete commands " 
set showmatch	" jump to matches when entering parentheses "
set matchtime=2	" tenths of a second to show the matching parenthesis "

set hlsearch	" highlight searches "
set incsearch	" do incremental searching, search as you type "
set ignorecase	" ignore case when searching "

set smartcase	" no ignorecase if Uppercase char present "
set expandtab                   " expand tabs to spaces "
set smarttab        
set shiftround

set autoindent smartindent shiftround 
set shiftwidth=4    
set tabstop=4       
set softtabstop=4       " insert mode tab and backspace use 4 spaces "

set nrformats=          "<C-a> <C-x> don't add 0xx number as oct"

set termguicolors

filetype on
filetype plugin on
filetype indent on

autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNew *.md,*.mkd,*.markdown set filetype=markdown.mkd

"autocmd BufNewFile *.sh,*.py exec \":call AutoSetFileHead()\"
"function! AutoSetFileHead()
"    " .sh "
"    if &filetype == 'sh'
"        call setline(1, "\#!/bin/bash")
"    endif                                                                                                                                                  
"         
"    " python "     
"    if &filetype == 'python'
"        call setline(1, "\#!/usr/bin/env python")
"        call append(1, "\# encoding: utf-8")
"    endif
"
"    normal G
"    normal o
"    normal o
"endfunc


" plugins "
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
" Plug 'kana/vim-textobj-entire'
Plug 'preservim/nerdcommenter'
"Plug 'davidhalter/jedi-vim'
call plug#end()

" themes "
colorscheme molokai
" If you prefer the scheme to match the original monokai background color, put this in your .vimrc file: "
" let g:molokai_original = 1 "
" There is also an alternative scheme under development for color terminals which attempts to bring the 256 color version as close as possible to the the default (dark) GUI version. To access, add this to your .vimrc: "
let g:rehash256 = 1

" air-line "
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"rainbow_parentheses"
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"nerd commenter
let g:NERDSpaceDelims=1
let mapleader=","
