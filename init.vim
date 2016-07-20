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
Plugin 'git://github.com/vim-scripts/Doxygen-Syntax'
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


"encoding,fileencodings,fileencoding -- enc,fencs,fenc
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gb2312,gbk,cp936,big5,cp936,euc-jp,euc-kr,latin1
"set fenc=utf-8
"newline format
set ffs=unix,dos,mac
"language
set langmenu=en_US.UTF-8

syntax enable
syntax on

set cursorcolumn
set cursorline
set list lcs=tab:\┊\ 
"set ambiwidth=double

" highlight search
set hls
" set nohls
"set nu
set number
"colorscheme github
"colorscheme spring
"colorscheme torte
"colorscheme darkblue
set background=dark
colorscheme solarized
"mouse enabled in buffers
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"highlight matching patterns when search
set showmatch

"indent
set tabstop=4
set softtabstop=4
set shiftwidth=2
set expandtab
set autoindent
set smarttab 
set cindent
if &term=="xterm"
  set t_Co=8
  set t_Sb=^[[4%dm
  set t_Sf=^[[3%dm
endif

"Set mapleader,for default "\"
let mapleader = ","


"taglist
let Tlist_Show_One_File=0   "show tags of multiple files
let Tlist_File_Fold_Auto_Close=1 "if not the current file, fold functions 
let Tlist_Exit_OnlyWindow=1 "when taglist is the last window, then quit vim
let Tlist_Use_SingleClick=1 "single click to jump
let Tlist_GainFocus_On_ToggleOpen=1 "acquire input focus when open taglist
let Tlist_Process_File_Always=1 "always analyze tag even taglist is not open
nmap <F8> :Tlist <cr>

"WinManager plugin
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
map <silent> <F9> :WMToggle<cr>

"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-,g- 
set cst
set csto=0
cs add /home/think/document/project/cscope.out /home/think/document/project
"Find this C symbol
nmap<C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
"Find this definition
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"Find functions calling this function
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"Find assignments to
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"Find this egrep pattern
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"Find this file
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"Find files #including this file
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"Find functions called by this function
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"grep
nnoremap <silent> <F3> :Grep<CR>
"compile
map <F6> :make<CR>
"auto completion
filetype plugin indent on   "filetype detecting
set completeopt=longest,menu "disable the preview window when autocomplete

"superTAB 
let g:SuperTabRetainCompletionType=2

let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"tags
if exists("tags")
  set tags=./tags
endif
"default shell
set shell=zsh
"history
set history=1000

"read file if it is modified outside
if exists("&autoread")
  set autoread
endif


"incremental search pattern
set incsearch
"ignorecase in search
"set ignorecase
"ignorecase if captial letters  
"set smartcase

"slient
set noerrorbells
set novisualbell
set t_vb=

"no backp
"set nobackup
"set nowb

"status bar
set showcmd
set backspace=indent,eol,start

"show line number and column number
set ruler 

source ~/vim.d/YouCompleteMe.vim
source ~/vim.d/DoxygenToolkit.vim
source ~/vim.d/doxygen.vim
source ~/vim.d/clang-format.vim
source ~/vim.d/vim-javascript.vim
source ~/vim.d/vim-jsbeautify.vim
