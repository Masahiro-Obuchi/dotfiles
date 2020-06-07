if &compatible
	  set nocompatible
  endif

"dein.vimディレクトリをruntimepathに追加する
set runtimepath+=~/vimfiles/bundles/repos/github.com/Shougo/dein.vim
 
 "以下定型文
if dein#load_state("~/vimfiles/bundles")
  call dein#begin("~/vimfiles/bundles")
    call dein#add("~/vimfiles/bundles/repos/github.com/Shougo/dein.vim")
		    
      "好きなプラグインを dein#add() 追加していく
      "call dein#add('好きなプラグイン')
      call dein#add('vim-airline/vim-airline')
      call dein#add('scrooloose/nerdtree')
      call dein#add('w0rp/ale')
      call dein#add('tpope/vim-commentary')
      call dein#add('vim-airline/vim-airline')
      call dein#add('vim-airline/vim-airline-themes')
      call dein#add('Shougo/deoplete.nvim')
      call dein#add('sheerun/vim-polyglot')
      call dein#add('SirVer/ultisnips')
      call dein#add('jiangmiao/auto-pairs')

    call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
syntax enable
filetype plugin indent on
set number
set expandtab
set hlsearch
set ignorecase
set incsearch
set smartcase

set laststatus=2
set autoindent
set showcmd
set background=dark
set wildmenu
set backspace=indent,eol,start
set ruler
set showmatch
set cursorline
set belloff=all

