set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
set runtimepath^=~/.vim/bundle/ctrlp.vim

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'hynek/vim-python-pep8-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Vim configration ############################################################
syntax enable
set hlsearch      
set autoindent nosmartindent
set nostartofline 
set number        
set shiftwidth=4  
set softtabstop=4 
set expandtab     
set colorcolumn=80
set scrolloff=8
set enc=utf-8 
set mouse=a
set hidden
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,venv/*
" #############################################################################

" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" Airline configuration #######################################################
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
" #############################################################################

" CtrlP configuration #########################################################
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" #############################################################################

" General Mappings and custom commands ########################################

map <C-h> <C-W>h<C-W>_
map <C-l> <C-W>l<C-W>_
imap jk <Esc>

nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bN<CR>

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
:nnoremap <F5> :buffers<CR>:buffer<Space>
" #############################################################################
