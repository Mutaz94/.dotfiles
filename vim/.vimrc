set guicursor=
set guifont=RobotoMono-ExtraLight:h11
set mouse=a
set noswapfile
set nobackup 
set tabstop=4 softtabstop=4 
set shiftwidth=4 
set expandtab
set smartindent
set nohlsearch
set incsearch 
set rnu nu 
" set mouse=a 
set encoding=utf-8
set fileencoding=utf-8
" set termguicolors 
"set spell spelllang=en_us
syntax on 

"hi SpellBad cterm=underline ctermbg=none gui=Undercurl guisp=red
call plug#begin('~/.vim/plugged')
    Plug 'JuliaEditorSupport/julia-vim'
    Plug 'tpope/vim-commentary'
    "{{ The Basics }}
    Plug 'gmarik/Vundle.vim'                           " Vundle
    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'suan/vim-instant-markdown', {'rtp': 'after'} " Markdown Preview
    Plug 'frazrepo/vim-rainbow'
"{{ File management }}
    Plug 'vifm/vifm.vim'                               " Vifm
    Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
"{{ Productivity }}
    Plug 'vimwiki/vimwiki'                             " VimWiki 
    Plug 'jreybert/vimagit'                            " Magit-like plugin for vim
"{{ Tim Pope Plugins }}
    Plug 'tpope/vim-surround'                          " Change surrounding marks
    Plug 'tpope/vim-fugitive'
"{{ Syntax Highlighting and Colors }}
    Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting
    Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
    Plug 'vim-python/python-syntax'                    " Python highlighting
    Plug 'ap/vim-css-color'                            " Color previews for CSS
"{{ Junegunn Choi Plugins }}
    Plug 'junegunn/goyo.vim'                           " Distraction-free viewing
    Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
    Plug 'junegunn/vim-emoji'                          " Vim needs emojis!

    " telescope requirements...
    Plug 'gruvbox-community/gruvbox'
    Plug 'arcticicestudio/nord-vim'
    Plug 'cocopon/iceberg.vim'
call plug#end()

let g:gruvbox_transparent_bg='1'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_inverst_selection='0'
" let g:gruvbox_termcolors='256'

" colorscheme gruvbox 
let mapleader=" "

" nnoremap <leader>ls :!ls<cr>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>y "+y
nnoremap <leader>tb :tabedit 
nnoremap <leader>lx :!latexmk -pdflatex=lualatex -pdf %<cr>
