" Map `<Leader>` key to `,` before loading any plugins.
let mapleader = ","

" This function is executed after loading all plugins.
function AfterConfig()

" Load Vim defaults everyone agrees on.
runtime! plugin/sensible.vim

" Use wombat256 as default color scheme.
colorscheme wombat256mod

" Do not wrap lines.
set nowrap

" Highlight all search matches and ignore case.
set hlsearch
set ignorecase

" Indent using two spaces.
set tabstop=2
set backspace=2
set shiftwidth=2
set expandtab

" Enable autoindentation.
set autoindent

" Show line numbers on sidebar and statusbar.
set number

" Don't ask if to safe buffers on close. 
set autowrite
set hidden

" Disable anoying beeps on errors.
set noerrorbells
set visualbell

" Don't parse modelines (for security reasons).
set nomodeline

" Disable auto folding on open.
set nofoldenable

" Enable mouse for scrolling and window resizing.
set mouse=nicr

" For autocompletion, complete as much as you can.
set wildmode=longest,full

" Disable output, vcs, archive, rails, temp and backup files.
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" Disable swap to prevent annoying messages.
set noswapfile

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let NERDTreeCaseSensitiveSort = 1
let NERDTreeChDirMode = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeHijackNetrw = 1

" Add gems.tags to files searched for tags.
set tags+=gems.tags

" Options for taglist.vim plugin
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Exit_OnlyWindow = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This enables iterm cursor changes from vim. In .tmux.conf you'll need:
" set-option -g terminal-overrides '*88col*:colors=88,*256col*:colors=256,xterm*:XT:Ms=\E]52;%p1%s;%p2%s\007:Cc=\E]12;%p1%s\007:Cr=\E]112\007:Cs=\E]50;CursorShape=%?%p1%{3}%<%t%{0}%e%p1%{2}%-%;%d\007'
"
" Source: https://github.com/Casecommons/casecommons_workstation/blob/master/templates/default/dot_tmux.conf.erb
"         https://github.com/Casecommons/vim-config/blob/master/init/tmux.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This fixes pasting from iterm (and some other terminals, but you'll need to
" adjust the condition) by using "bracketed paste mode"
" I modified it to work in tmux and not wait for esc (by using f28/f29)
"
" See: http://stackoverflow.com/questions/5585129/pasting-code-into-terminal-window-into-vim-on-mac-os-x
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tmux wrapping borrowed from vitality.vim: https://github.com/sjl/vitality.vim
function WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

" Use dash as word separator.
set iskeyword+=-

" Use arrows for scrolling instead of moving cursor.
map <Down> <c-e>
map <Up> <c-y>
map <Left> z<Left>
map <Right> z<Right>

" Automatically strip whitespace on exit.
" autocmd BufWritePre *.rb :%s/\s\+$//e

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Expand %% to path of current buffer in command mode.
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Auto center on matched string.
noremap <Leader>n nzz 
noremap <Leader>N Nzz

" Map CTRL+L to piece-wise copying of the line above.
imap <C-L> @@@<ESC>hhkywjl?@@@<CR>P/@@@<CR>3s

endfunction
