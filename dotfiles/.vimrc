set nocompatible              " be iMproved, required
filetype off                  " required

set ff=unix

" tell vim where to put its backup files
set backupdir=$TMPDIR

" tell vim where to put swap files
set dir=$TMPDIR

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script.git'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'lambdatoast/elm.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mattn/gist-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'scrooloose/syntastic'
Plugin 'sukima/xmledit.git'
Plugin 'timcharper/textile.vim.git'
Plugin 'tpope/vim-cucumber.git'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-git.git'
Plugin 'tpope/vim-haml.git'
Plugin 'tpope/vim-markdown.git'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-vividchalk.git'
Plugin 'tpope/vim-vinegar.git'
Plugin 'tsaleh/vim-align.git'
Plugin 'tsaleh/vim-shoulda.git'
Plugin 'tsaleh/vim-supertab.git'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'vim-ruby/vim-ruby.git' 
Plugin 'vim-scripts/Greplace.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'wakatime/vim-wakatime'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattn/emmet-vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line" just gimme vim!

let g:syntastic_javascript_checkers = ['jsl']
let g:vim_json_syntax_conceal = 0

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

" set F1 dumb help to ESC
map <F1> <Esc>
imap <F1> <Esc>

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

autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" turn on word wrap when editing text and markdown
au BufRead,BufNewFile *.txt,*.md set wrap linebreak nolist textwidth=120 wrapmargin=0


" ---------- COLORS ------------

" set color scheme
if has("gui_running")
    set guifont=DejaVu_Sans_Mono:h14
"    set guifont=SF Mono Regular:h14
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

