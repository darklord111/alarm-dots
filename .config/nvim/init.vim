""Basic Vim settings
let mapleader = ","
set nocompatible
set shell=zsh
set tw=0
set clipboard=unnamedplus
set backspace=indent,eol,start
set guicursor=
set clipboard+=unnamedplus
set number relativenumber
set hlsearch
set cpoptions+=n
set numberwidth=4
set wildmode=longest,list,full
set encoding=utf-8
set cursorline
set cursorcolumn

"" Spell check
set spelllang=en_gb
set spellfile=$HOME/.vim/spell/en.utf-8.add
set spell


"' Vundle vim plugins
set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin('~/.config/vim/bundle/')
Plugin 'gmarik/Vundle.vim'
Plugin 'junegunn/goyo.vim'
Plugin  'tpope/vim-eunuch'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'sheerun/vim-polyglot'
Plugin 'arcticicestudio/nord-vim'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'vimwiki/vimwiki'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'ap/vim-css-color'
Bundle 'ron89/thesaurus_query.vim'
call vundle#end()

""colorscheme nord
syntax on
filetype plugin indent on
filetype on
set background=dark
colorscheme nord
call togglebg#map("<F6>")
"" Netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :NERDTreeToggle
augroup END

" vimwiki settings
let g:vimwiki_list = [{'path': '~/.local/share/vimwiki'}]
"
"" Keybindings
nnoremap <leader>g :Goyo <CR>
nnoremap <leader>G :Goyo! <CR>
nnoremap <leader>ZZ :SudoWrite <CR>
nnoremap <leader>l <c-w>w
nnoremap <leader>s z=
nnoremap c "_c
nnoremap <leader>p :%s/i686/pentium4/gc <CR>
nnoremap <leader>P :%s/x86_64/pentium4/gc <CR>
