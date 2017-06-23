set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'git://github.com/altercation/vim-colors-solarized'
Plugin 'git://github.com/editorconfig/editorconfig-vim.git'
Plugin 'git://github.com/ervandew/supertab.git'
Plugin 'git://github.com/fholgado/minibufexpl.vim.git'
Plugin 'git://github.com/flazz/vim-colorschemes.git'
Plugin 'git://github.com/gentoo/gentoo-syntax.git'
Plugin 'git://github.com/gmarik/Vundle.vim'
" Plugin 'git://github.com/jiangmiao/auto-pairs.git'
Plugin 'git://github.com/maksimr/vim-jsbeautify.git'
Plugin 'git://github.com/mbbill/undotree.git'
Plugin 'git://github.com/msanders/snipmate.vim.git'
Plugin 'git://github.com/pangloss/vim-javascript.git'
Plugin 'git://github.com/rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'git://github.com/scrooloose/nerdcommenter.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/scrooloose/syntastic.git'
Plugin 'git://github.com/tpope/vim-fugitive'
Plugin 'git://github.com/vim-scripts/cmdalias.vim'
Plugin 'git://github.com/vim-scripts/DoxygenToolkit.vim'
Plugin 'git://github.com/vim-scripts/gdbmgr.git'
Plugin 'git://github.com/vim-scripts/genutils'
Plugin 'git://github.com/vim-scripts/greputils'
Plugin 'git://github.com/vim-scripts/L9'
Plugin 'git://github.com/vim-scripts/multvals.vim'
Plugin 'git://github.com/vim-scripts/taglist.vim'
Plugin 'git://github.com/vim-scripts/winmanager'
Plugin 'git://github.com/Valloric/YouCompleteMe'
Plugin 'git://github.com/rhysd/vim-clang-format'
Plugin 'git://github.com/kana/vim-operator-user'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-pathogen'
Plugin 'python-mode/python-mode'

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

