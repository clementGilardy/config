source ~/.vim/colors/molokai.vim

set relativenumber

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=100    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.

set encoding=utf-8

nnoremap <F3> :NERDTreeTabsToggle<CR>
 
filetype plugin indent on


set bg=dark
set laststatus=2
set statusline=%<%f\ %h%m%r(%{fugitive#head()})%=(%l,%c%V)\ %P

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
    set nocompatible               " Be iMproved

    "Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
"Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'terryma/vim-multiple-cursors'
" auto generation de code
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="²"
" coloration twig
NeoBundle 'beyondwords/vim-twig'
" vim powerline
NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" vim with git, just awesome !
NeoBundle 'tpope/vim-fugitive'
" vim symfony2
NeoBundle 'docteurklein/vim-symfony'
let g:symfony_app_console_caller= "php"
let g:symfony_app_console_path= "app/console"
map <C-f> :execute ":!"g:symfony_enable_shell_cmd<CR>
" fyzzy file
NeoBundle 'kien/ctrlp.vim'
colorscheme molokai
NeoBundle 'tomasr/molokai'
let g:molokai_original = 1
"emmet
let g:user_emmet_leader_key = '<c-e>'

NeoBundle 'christoomey/vim-tmux-navigator'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()


" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
syntax on
