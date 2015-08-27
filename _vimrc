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
"set encoding=UTF-8		"�����R�[�h��UTF-8�ɂ���
"set fileencoding=UTF-8	"�����R�[�h��UTF-8�ɂ���
"set termencoding=UTF-8	"�����R�[�h��UTF-8�ɂ���

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

"indent setting
"
set autoindent
set tabstop=4		"�s���ȊO�ł�<Tab>�̕�
set shiftwidth=4	"�s���ł�<Tab>�̕�
set softtabstop=4

