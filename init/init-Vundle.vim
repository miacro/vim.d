set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'altercation/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim.git'
Plugin 'ervandew/supertab.git'
Plugin 'fholgado/minibufexpl.vim.git'
Plugin 'flazz/vim-colorschemes.git'
Plugin 'gentoo/gentoo-syntax.git'
Plugin 'gmarik/Vundle.vim'
" Plugin 'jiangmiao/auto-pairs.git'
Plugin 'maksimr/vim-jsbeautify.git'
Plugin 'mbbill/undotree.git'
Plugin 'msanders/snipmate.vim.git'
Plugin 'pangloss/vim-javascript.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/cmdalias.vim'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vim-scripts/gdbmgr.git'
Plugin 'vim-scripts/genutils'
Plugin 'vim-scripts/greputils'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/multvals.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/winmanager'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'
Plugin 'kana/vim-operator-user'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-pathogen'
Plugin 'python-mode/python-mode'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vhda/verilog_systemverilog.vim'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
" Plugin 'winmanager'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

