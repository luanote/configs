set nocompatible
set backspace=indent,eol,start
set showcmd
set hlsearch
set history=1000
set nobackup
set noswapfile
"set cursorline
"set cursorcolumn
set autoindent
set cindent
syntax enable
syntax on
set t_Co=256
colorscheme molokai
"
""设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"
""长度提示颜色 vim
highlight ColorColumn ctermbg=red
"长度提示颜色 gvim
"highlight ColorColumn guibg=Black
""保留上次文件打开位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"设置编码方式
"set encoding=utf-8
""自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

filetype on
filetype indent on
filetype plugin on

"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"" vundle配置===============================================================
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Bundle 'gmarik/vundle'
Bundle 'ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
Bundle 'ervandew/supertab'
Bundle 'fatih/vim-go'
call vundle#end()
filetype plugin indent on
"highlight PMenu ctermbg=8 guibg=LightSteelBlue1
""highlight PMenuSel ctermbg=4
set viminfo='20,<1000
if &diff  
	colorscheme evening
endif
