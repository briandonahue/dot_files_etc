" ---------- BASIC OPTIONS ----------

" just gimme vim!
set nocompatible

" load vim bundles using pathogen
silent! call pathogen#runtime_append_all_bundles()

" follow the leader
let mapleader = ","

" set filetype stuff to on
syntax enable
filetype on
filetype plugin on
filetype indent on

" ignore swap and sass temp files
set wildignore=*.swp,*.scssc,*.sassc

" move swap files to tempt directory
if has("win32") || has("win64")
   set directory=$TMP
else
   set directory=/tmp
end

" no wrap by default
set nowrap

" gimme some line numbers
set number

" configure tabs
set tabstop=2
set shiftwidth=2
set expandtab

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" silence the beep
set visualbell

" allow backspacing over indent, eol, and the start of an insert
set backspace=2

" make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" show the current command in the lower right corner
set showcmd

" show the current mode
set showmode

" hide the mouse pointer while typing
set mousehide

" set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" allow pasting into other apps and use simple dialogs
set guioptions=ac

" this is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
" 
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is
"      executed if there is one (which there isn't) or the command aborts.
set timeoutlen=500

" keep some stuff in the history
set history=100

" when the page starts to scroll, keep the cursor 3 lines from the top and 3
" lines from the bottom
set scrolloff=3

" make the command-line completion better
set wildmenu

" set the textwidth to be 120 chars
set textwidth=120

" get rid of the silly characters in window separators
set fillchars=""

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Initial path seeding
set path=
set path+=~/code/**

" syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P



" ---------- MAPPINGS ----------

" turn off that stupid highlight search
nmap <silent> ,n :set invhls<CR>:set hls?<CR>

" set text wrapping toggles
nmap <silent> ,w :set invwrap<CR>:set wrap?<CR>

" map CTRL-E to do what ',' used to do
nnoremap <c-e> ,
vnoremap <c-e> ,

" buffer commands
noremap <silent> ,bd :bd<CR>

" edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" toggle nerdtree
map <silent> ,d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <silent> ,f :execute 'CommandTFlush'<CR>



" ---------- COLORS ------------

" set color scheme
if has("gui_running")
    set guifont=DejaVu_Sans_Mono:h12
    set antialias
    colorscheme vividchalk
    set background=dark

    if !exists("g:vimrcloaded")
        winpos 0 0
        if ! &diff
            winsize 140 90
        else
            winsize 227 90
        endif
        let g:vimrcloaded = 1
    endif

if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif
endif
