"plugin
"
"setup
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

NeoBundleCheck

"Encode
"
"set encoding=UTF-8		"文字コードをUTF-8にする
"set fileencoding=UTF-8	"文字コードをUTF-8にする
"set termencoding=UTF-8	"文字コードをUTF-8にする

"Others
"
set number		"行番号表示
set nobackup	"backupファイル使わない
set noundofile	"undoファイル使わない
set noswapfile	"swpファイル使わない
set cmdheight=2	"コマンドラインに使われる行数
set wildmenu wildmode=list:full

"Search
"
set incsearch	"インクリメンタルサーチを行う
set hlsearch	"検索結果をハイライトする
set ignorecase	"検索時に文字の大小を区別しない
set smartcase	"検索時に大文字を含んでいたら大小を区別する
set wrapscan	"検索をファイルの先頭へループする

"Input
"
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]	"カーソルを行頭、行末で止まらないようにする
set clipboard=unnamed			"クリップボードを利用する

" 空白文字を表示
set list			"タブ、行末等の不可視文字を表示する
set listchars=tab:__,trail:_,eol:$

"indent setting
"
set autoindent
set tabstop=4		"行頭以外での<Tab>の幅
set shiftwidth=4	"行頭での<Tab>の幅
set softtabstop=4

