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

"NeoBundle 'Shougo/unite.vim'		" ファイルオープンを便利に
"NeoBundle 'Shougo/neomru.vim'		" Unite.vimで履歴表示
"NeoBundle 'Shougo/neocomplete.vim'	"補完プラグイン
"NeoBundle 'Shougo/neosnippet'		"スニペット
"NeoBundle 'Shougo/neosnippet-snippets',{
"			\ 'depends' : 'Shougo/neosnippet'
"			\ }
"
"NeoBundleLazy 'vim-jp/cpp-vim',{
"			\ 'autoload' : { 'filetypes' : ['cpp','c','h'] }
"			\ }
"
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"Encode
"
set encoding=UTF-8		"文字コードをUTF-8にする
set fileencoding=UTF-8	"文字コードをUTF-8にする
set termencoding=UTF-8	"文字コードをUTF-8にする

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

""Unite.vim setting
""
"" 入力モードで開始する
"let g:unite_enable_start_insert=1
"" バッファ一覧
"noremap <C-P> :Unite buffer<CR>
"" ファイル一覧
"noremap <C-N> :Unite -buffer-name=file file<CR>
"" 最近使ったファイルの一覧
"noremap <C-Z> :Unite file_mru<CR>
"" sourcesを「今開いているファイルのディレクトリ」とする
"noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
"" ウィンドウを分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"" ウィンドウを縦に分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"" ESCキーを2回押すと終了する
"au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
"au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
"
""neocomplete.vim setting
""
"let g:neocomplete#enable_at_startup = 1
"	let g:neocomplete#enable_ignore_case = 1
"	let g:neocomplete#enable_smart_case = 1
"	let g:neocomplete#sources#syntax#min_keyword_length = 2
"	let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"	if !exists('g:neocomplete#keyword_patterns')
"		let g:neocomplete#keyword_patterns = {}
"	endif
"	if !exists('g:neocomplete#sources#omni#input_patterns')
"		let g:neocomplete#sources#omni#input_patterns = {}
"	endif
"	let g:neocomplete#keyword_patterns._ = '\h\w*'
"	if !exists('g:neocomplete#force_omni_input_patterns')
"		let g:neocomplete#force_omni_input_patterns = {}
"	endif
"	let g:neocomplete#force_omni_input_patterns.cpp =
"				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
"
""補完
""neosnippet.vim setting
""
"" Plugin key-mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)
" 
"" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: "\<TAB>"
" 
"" For snippet_complete marker.
"if has('conceal')
"  set conceallevel=2 concealcursor=i
"endif
"
"indent setting
"
set autoindent
set tabstop=4		"行頭以外での<Tab>の幅
set shiftwidth=4	"行頭での<Tab>の幅
set softtabstop=4

au BufRead,BufNewFile *.txt	set tabstop=2 shiftwidth=2 softtabstop=2
