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
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized
"mouse enabled in buffers
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"highlight matching patterns when search
set showmatch

"indent
set tabstop=2
set softtabstop=2
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
"cs add /home/think/document/project/cscope.out /home/think/document/project
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
filetype indent on
set completeopt=longest,menu "disable the preview window when autocomplete


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
