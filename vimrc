set nocompatible
filetype off

" Setup Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'rking/ag.vim'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tmhedberg/matchit'
Bundle 'vim-scripts/tComment'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-projectionist'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'burnettk/vim-angular'
Bundle 'jnwhiteh/vim-golang'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'ervandew/supertab'
Bundle 'ntpeters/vim-better-whitespace'

Bundle 'mattn/emmet-vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'elixir-lang/vim-elixir'
Bundle 'jimenezrick/vimerl'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'wolfy87/vim-enmasse'
Bundle 'wellle/tmux-complete.vim'

Bundle 'benmills/vimux'
Bundle 'janko-m/vim-test'

Bundle 'cloud8421/vim-neatstatus'
Bundle 'tomasr/molokai'

set nobackup
set nowritebackup
set notimeout
set ttimeout
set ttimeoutlen=10
set noswapfile                    " It's 2012, Vim."
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set t_Co=256
set modeline
set autoread
syntax on

set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add

" Fix backspace
set backspace=indent,eol,start
fixdel

" Send more characters for redraws
set ttyfast

" Use Bash as shell
set shell=/usr/local/bin/bash

" Enable mouse use in all modes
set mouse=a
set ttymouse=xterm2

filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·
" Clipboard fix for OsX
set clipboard=unnamed

" Numbers
set number
set numberwidth=2

"Folding
set foldmethod=indent
set foldlevelstart=99

" Autocompletion options
set wildmode=list:longest,list:full
set complete=.,w,b,u,t
set omnifunc=syntaxcomplete#Complete

" When spellcheck is enabled, autocomplete from dictionary
set complete+=kspell

" Tags
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags -R --exclude=.git --exclude=log -f ./.tags *"
set tags+=.tags

source $HOME/.vim/autocommands.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/shortcuts.vim
source $HOME/.vim/rails.vim
source $HOME/.vim/syntax.vim
source $HOME/.vim/tmux.vim
source $HOME/.vim/visual_fixes.vim
