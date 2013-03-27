set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
let g:neobundle#types#git#default_protocol = 'https'

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'
call neobundle#config('vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ })

NeoBundle 'sheerun/vimrc'
NeoBundle 'christoomey/vim-space'
NeoBundle 'chrisbra/NrrwRgn'
NeoBundle 'vim-scripts/ZoomWin'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'briandoll/change-inside-surroundings.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'nathanaelkane/vim-command-w.git'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'ap/vim-css-color'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-rsi'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'skalnik/vim-vroom'
NeoBundle 'vim-scripts/vimwiki'
NeoBundle 'milkypostman/vim-togglelist'
NeoBundle 'vim-scripts/scratch.vim'
NeoBundle 'AndrewRadev/switch.vim'
NeoBundle 'vim-scripts/IndexedSearch'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rake'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leshill/vim-json'
NeoBundle 'mutewinter/tomdoc.vim'
NeoBundle 'jc00ke/vim-tomdoc'
NeoBundle 'mutewinter/nginx.vim'
NeoBundle 'timcharper/textile.vim'
NeoBundle 'mutewinter/vim-css3-syntax'
NeoBundle 'acustodioo/vim-tmux'
NeoBundle 'groenewege/vim-less'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'vim-scripts/SmartCase'
NeoBundle 'tpope/vim-scriptease'
NeoBundle 'vim-scripts/AutoTag'
NeoBundle 'vim-scripts/UnconditionalPaste'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'spolu/dwm.vim'
NeoBundle 'vim-scripts/gitignore'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'jrk/vim-ocaml'
NeoBundle 'wlangstroth/vim-haskell'
NeoBundle 'eagletmt/ghcmod-vim', { 'autoload' : { 'filetypes' : 'haskell' }}
NeoBundleLazy 'ujihisa/neco-ghc', { 'autoload' : { 'filetypes' : 'haskell' }}

NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'skwp/vim-conque'
NeoBundle 'duff/vim-bufonly'
NeoBundle 'skwp/vim-ruby-conque'

filetype plugin indent on

NeoBundleCheck
