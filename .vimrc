set nocompatible              " be iMproved, required
set backspace=indent,eol,start

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Good looking bottom :)
Plugin 'bling/vim-airline'
" Rails :/
Plugin 'tpope/vim-rails.git'
" vim ruby support
Plugin 'vim-ruby/vim-ruby'
"" Snippets for our use :)
"Plugin 'msanders/snipmate.vim'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Surround your code :)
Plugin 'tpope/vim-surround'
" Every one should have a pair (Autogenerate pairs for {[( )
Plugin 'jiangmiao/auto-pairs'
" Tab completions
"Plugin 'ervandew/supertab'
" Fuzzy finder for vim (CTRL+P)
Plugin 'kien/ctrlp.vim'
" color scheme
Plugin 'zeis/vim-kolor'
" Nerd commenter
Plugin 'scrooloose/nerdcommenter'
" Nerd tree
Plugin 'scrooloose/nerdtree'
" Tabular -- alignment plugin
Plugin 'godlygeek/tabular'
" Whitespace highlighting for vim
Plugin 'ntpeters/vim-better-whitespace'
"" Autocomplete plugin for vim
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Syntax highlighting and theme
syntax enable
set t_Co=256

let g:kolor_italic=1 " Enable italic. Default: 1
let g:kolor_bold=1 " Enable bold. Default: 1
let g:kolor_underlined=0 " Enable underline for 'Underlined'. Default: 0
let g:kolor_alternative_matchparen=0 " Gray 'MatchParen' color. Default: 0
colorscheme kolor


" set ruby compiler
autocmd FileType ruby compiler ruby
" Vim will load/evaluate code in order to provide completions
let g:rubycomplete_buffer_loading = 1
" Vim can parse the entire buffer to add a list of classes to the completion results
let g:rubycomplete_classes_in_global = 1

" omni-completion for vim
set omnifunc=syntaxcomplete#Complete

set tabstop=2 " number of visual spaces per tab
set expandtab " tabs are spaces
set shiftwidth=2
set number
set cursorline
set smartindent
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch
let mapleader=';'
nmap <tab> <C-W><C-W>
imap jj <Esc>
cmap jj <Esc>
let g:AutoPairsShortcutJump='<leader><CR>'
cmap <leader>p <C-R>"
nmap <leader>q :q<CR>
nmap <leader>t :tabnew<CR>
nmap <leader>w :w<CR>
nmap <leader>rg :Rgrep<CR><C-w><C-R>"<CR><CR><CR>
nmap <leader>z <C-z>
nmap <leader>N :NERDTreeToggle<CR>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><leader><tab>"
