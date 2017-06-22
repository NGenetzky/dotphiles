" Nathan Genetzky's vimrc {
" vim: set sw=4 ts=4 sts=4 et tw=78 ft=vim foldmarker={,} foldlevel=0 foldmethod=marker :
" Name: Nathan Genetzky
" WorkEmail: nathan.genetzky@Daktronics.com
" PersonalEmail: nathan@genetzky.us
" }
" References:
" registers:http://stackoverflow.com/a/3997110
" vimgrep+regex+magic:http://vi.stackexchange.com/a/2279
" Example vimrc stuff: https://github.com/amix/vimrc
"
" Example vimrc
" https://github.com/seejohnrun/dotfiles/blob/master/.vimrc
" http://chibicode.com/vimrc/
" https://github.com/skwp/dotfiles
" https://github.com/joedicastro/dotfiles/tree/master/vim


set encoding=utf-8
scriptencoding utf-8

" Basic options {

" General {
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
" set nocompatible " Get rid of Vi compatibility mode.
if &compatible | set nocompatible | endif " Avoid side effects if `nocp` already set

syntax enable " enable syntax highlighting (previously syntax on).

set textwidth=78
" }

" Searching {
set ignorecase " Use case insensitive search,
set smartcase " except when using capital letters
set hlsearch " Highlight searches
"set incsearch " Highlight as you type your search.
" } Searching

" Indentation {
set shiftround            " always indent/outdent to the nearest tabstop
set noautoindent
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
"set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4

" } Indentation

" wrap: lines longer than the width of the window will wrap and displaying
" continues on the next line
set wrap

" Turn off spell checking.
set nospell

" Mouse is only available in normal and visual mode. I do not want it on for
" insert mode because I use that to insert text into the terminal sometimes.
set mouse=nv
set mousehide

" Better command-line completion
" set wildmenu            " visual autocomplete for command menu
set wildmode=longest:full,list:full

set showcmd " Show partial commands in the last line of the screen

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Turn auto-wrapping off.
" If you want to keep your existing 'textwidth' settings for most lines in
" your file, but not have Vim automatically reformat when typing on existing
" lines, you can do this with:
set formatoptions-=t

set cryptmethod=blowfish

set previewheight=20

" Allows modeline to specify file specifc settings.
" See: http://vim.wikia.com/wiki/Modeline_magic
" Will look at the first $modelines and last $modelines in each file.
set modeline
set modelines=5

set exrc
set secure

" This conditional would cause the system clipboard to be used by default.
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

" Search down into subfolders
" Provides tab-completion for all file-related tasks.
set path+=**


" List {
set list
" Replace bad characters with unicode so they are seen easily
" src: Damian Conway, More Instanly Better Vim  Sep 10 2013 on Youtube
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
" src: https://github.com/lukemetz/vim/blob/8466bdde18b0e33a000324fc22bb9092798dbe45/gvimrc
" set listchars=trail:�,precedes:�,extends:�,tab:�
set listchars=tab:�.,trail:�,nbsp:.
" }

" }

" Vim temp files: {

set viminfo+=n~/.vim/info

set viewdir=~.vim/views//

set undofile   " Maintain undo history between sessions
set undodir=~/.vim/undo/
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

set backup
set writebackup
set backupdir=~/.vim/backup/
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif

" Directory used for swap files
set directory=~/.vim/swap/
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
" }

" Filetype specific {
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

au! BufRead,BufNewFile *.markdown,*.md set filetype=markdown
au BufNewFile,BufRead  *.bash*  set filetype=sh
au BufNewFile,BufRead  *.sv  set filetype=verilog

autocmd FileType mkd setlocal spell

autocmd FileType verilog,sv setlocal commentstring=//\ %s
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

autocmd FileType sh setlocal makeprg=./%

autocmd FileType verilog setlocal errorformat=\*\*\ %tRROR:\ %f(%l):\ %m,\*\*\ %tRROR:\ %m,\*\*\ %tARNING:\ %m,\*\*\ %tOTE:\ %m,%tRROR:\ %f(%l):\ %m,%tARNING\[%*[0-9]\]:\ %f(%l):\ %m,%tRROR:\ %m,%tARNING\[%*[0-9]\]:\ %m

" autocmd FileType vim setlocal foldmethod=marker
" autocmd FileType cpp,c,h setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,h setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax
" Folds levels on open.
" src: http://vim.wikia.com/wiki/All_folds_open_when_opening_a_file
" set foldlevel=10
" Can force the start level.
" set foldlevelstart=10
" Or use keys to set it to maximum.
autocmd FileType * normal zR

if $TMUX == ''
    " TMUX is not running
endif
