filetype plugin indent on
syntax enable

set autoread
set scrolloff=7

set wildmenu
set wildmode=longest:full,list:full
set wildignore=*.o,*~,*.pyc,*/.git*,*/.gh/*,*/.svn/*,*/.DS_Store

set showcmd
set cmdheight=1
set ruler
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set matchtime=2

" set number
" set relativenumber
" set numberwidth=5
set clipboard+=unnamed,unnamedplus
set list
set listchars=tab:▶\ ,trail:▦

set mouse=a
" set spell
set spellfile=~/.vim/spell/en.utf-8.add
set cursorline
set modeline

set foldenable
set foldmethod=marker
" set foldcolumn=1
set foldlevelstart=10

set background=dark
set termguicolors
set encoding=utf8
set fileformats=unix,mac,dos

set nobackup
set nowritebackup
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set tabstop=8
set softtabstop=2

set linebreak
set wrap
set autoindent

set path+=**

set splitright
set splitbelow

set textwidth=80
set formatoptions+=t

set shiftround
set grepprg=ag

set omnifunc=syntaxcomplete#Complete
set completeopt=menuone,noselect

try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry

set ttyfast

" Statusline {{{
set laststatus=2

set statusline=\ %f%m
set statusline+=\ %y
set statusline+=%=
set statusline+=%q
set statusline+=\ %k
set statusline+=\ Column:\ %-4c
set statusline+=\ Line:\ %l
set statusline+=\ /\ %-4L
set statusline+=\ %p%%\ 
" }}}

" Cursor Settings {{{
let &t_EI = "\e[0 q"
let &t_SI = "\e[5 q"
" }}}

" NERDTree Settings {{{
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules', '.git']
" }}}

" FZF {{{
" let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.3, 'relative': v:true, 'yoffset': 1.0 } }
let g:fzf_layout = { 'down': '10%' }
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always'
let g:fzf_tags_command = 'ctags -R'

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
      \ 'ctrl-q': function('s:build_quickfix_list'),
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit',
      \ }
" }}}

" Emmet-Vim {{{
let g:user_emmet_leader_key = '<C-L>'
" }}}

" Gutentags {{{
let g:gutentags_ctags_executable = substitute(system("brew --prefix"), '\n', '', 'g') . "/bin/ctags"
" }}}
