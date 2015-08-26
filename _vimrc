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

"NeoBundle 'Shougo/unite.vim'		" �t�@�C���I�[�v����֗���
"NeoBundle 'Shougo/neomru.vim'		" Unite.vim�ŗ���\��
"NeoBundle 'Shougo/neocomplete.vim'	"�⊮�v���O�C��
"NeoBundle 'Shougo/neosnippet'		"�X�j�y�b�g
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
set encoding=UTF-8		"�����R�[�h��UTF-8�ɂ���
set fileencoding=UTF-8	"�����R�[�h��UTF-8�ɂ���
set termencoding=UTF-8	"�����R�[�h��UTF-8�ɂ���

"Others
"
set number		"�s�ԍ��\��
set nobackup	"backup�t�@�C���g��Ȃ�
set noundofile	"undo�t�@�C���g��Ȃ�
set noswapfile	"swp�t�@�C���g��Ȃ�
set cmdheight=2	"�R�}���h���C���Ɏg����s��
set wildmenu wildmode=list:full

"Search
"
set incsearch	"�C���N�������^���T�[�`���s��
set hlsearch	"�������ʂ��n�C���C�g����
set ignorecase	"�������ɕ����̑召����ʂ��Ȃ�
set smartcase	"�������ɑ啶�����܂�ł�����召����ʂ���
set wrapscan	"�������t�@�C���̐擪�փ��[�v����

"Input
"
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]	"�J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���
set clipboard=unnamed			"�N���b�v�{�[�h�𗘗p����

" �󔒕�����\��
set list			"�^�u�A�s�����̕s��������\������
set listchars=tab:__,trail:_,eol:$

""Unite.vim setting
""
"" ���̓��[�h�ŊJ�n����
"let g:unite_enable_start_insert=1
"" �o�b�t�@�ꗗ
"noremap <C-P> :Unite buffer<CR>
"" �t�@�C���ꗗ
"noremap <C-N> :Unite -buffer-name=file file<CR>
"" �ŋߎg�����t�@�C���̈ꗗ
"noremap <C-Z> :Unite file_mru<CR>
"" sources���u���J���Ă���t�@�C���̃f�B���N�g���v�Ƃ���
"noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
"" �E�B���h�E�𕪊����ĊJ��
"au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"" �E�B���h�E���c�ɕ������ĊJ��
"au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"" ESC�L�[��2�񉟂��ƏI������
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
""�⊮
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
set tabstop=4		"�s���ȊO�ł�<Tab>�̕�
set shiftwidth=4	"�s���ł�<Tab>�̕�
set softtabstop=4

au BufRead,BufNewFile *.txt	set tabstop=2 shiftwidth=2 softtabstop=2
