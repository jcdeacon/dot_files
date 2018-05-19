" Syntax highlighting
syntax on

" Visual indication when 80 characters exceeded
set colorcolumn = 80

" Line numbers
set number

" Makes it wrap without newlines.
set wrap linebreak nolist

" Set to auto read when a file is changed from the outside.
set autoread

" Now typing 'W' is sudo 'w'.
command W w !sudo tee % > /dev/null

" Keep undo history across sessions, by storing in file.
if has('persistent_undo') && isdirectory(expand('~').'/.vim/backups')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif

" Sets how many lines of history VIM has to remember.
set history=500

" Always show current position.
set ruler

" Ignore case when searching.
set ignorecase

" ...Unless we type a capital.
set smartcase

" Highlight search results.
set hlsearch

" Finds the next match aas we type the search.
set incsearch

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Disable annoying beeping
set noerrorbells
set vb t_vb=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab " Use spaces instead of tabs
" Auto-indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set autoindent "Auto indent
set smartindent "Smart indent

" Enable filetype plugins
filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

