


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tmux
"
if executable("tmux")
    ""A simple, vimscript only, command runner for sending commands from vim to tmux.
    " Bundle 'christoomey/vim-tmux-runner'
    Bundle 'christoomey/vim-tmux-navigator'
    " Vimux effortless vim and tmux interaction
    Bundle 'benmills/vimux'
endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
"
if count(g:vundles, 'ctags')
    " Disable Bundle when Exuberant Ctags is not installed.
    if executable("ctags")
        " vim-misc is required for vim-easytags
        Bundle 'xolox/vim-misc'
        " Automated tag generation and syntax highlighting in Vim
        Bundle 'xolox/vim-easytags'
    endif

    " Shows the current tag structure in a pane.
    Bundle 'majutsushi/tagbar'
endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cpp
"
if count(g:vundles, 'cpp')
    " C/C++ IDE --  Write and run programs. Insert statements, idioms, comments etc. 
    " Bundle 'WolfgangMehner/c-support'

    " Vim plugin for c/c++ developers and Vim lovers
    " Bundle 'bbchung/clighter8'
endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" unite: Lists of things
"
if count(g:vundles, 'unite')
    " The unite or unite.vim plug-in can search and display information from
    " arbitrary sources like files, buffers, recently used files or registers.
    Bundle 'Shougo/unite.vim'

    Bundle 'Shougo/neoyank.vim'
    Bundle 'Shougo/vimproc.vim'
    Bundle 'Shougo/neomru.vim'
    Bundle 'Shougo/unite-outline'
    Bundle 'Shougo/unite-ssh'
    Bundle 'Shougo/vimfiler'
endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" unite: Lists of things
"
if count(g:vundles, 'shougo_complete')
    " Ultimate auto-completion system for Vim
    if (704 <= v:version)
        Bundle 'Shougo/neocomplcache'
        Bundle 'Shougo/neocomplete'
    endif

    if has('python') && (704 <= v:version)
        " Supports all snippets in this repo(https://github.com/honza/vim-snippets).
        Bundle 'SirVer/ultisnips'
    else
        " neo-snippet plugin contains neocomplcache snippets source
        Bundle 'Shougo/neosnippet'
        " The standard snippets repository for neosnippet
        Bundle 'Shougo/neosnippet-snippets'

        " VimL, snipmate-snippets, engine sometimes behaves strange. Supports snippets/*
        " Bundle 'garbas/vim-snipmate'
    endif
endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline
"
if count(g:vundles, 'lightline')
    " TODO: Check airline is not included.
    " A light and configurable statusline/tabline for Vim.
    Bundle 'itchyny/lightline.vim'
endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gist
"
if count(g:vundles, 'gist')
    " vimscript for creating gists
    " Bundle 'mattn/webapi-vim'
    " Bundle 'mattn/gist-vim'
endif
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
"

" precision colorscheme for the vim text editor
" Bundle 'altercation/vim-colors-solarized'

" one colorscheme pack to rule them all
" Bundle 'flazz/vim-colorschemes'

" Colorscheme for vim
"Bundle 'davidklsn/vim-sialoquent'

"Bundle 'tomasiser/vim-code-dark'

"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" markdown
if count(g:vundles, 'markdown')
    " Vim Markdown runtime files
    Bundle 'tpope/vim-markdown'
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bitbake
if count(g:vundles, 'bitbake')
    Bundle 'kergoth/vim-bitbake'
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bitbake
if count(g:vundles, 'bitbake')
    Bundle 'kergoth/vim-bitbake'
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tpope
"

Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-sensible'

" a Git wrapper so awesome, it should be illegal
" Bundle 'tpope/vim-fugitive'

" comment stuff out
Bundle 'tpope/vim-commentary'

" speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
Bundle 'tpope/vim-speeddating'

" quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'

" enable repeating supported plugin maps with "."
Bundle 'tpope/vim-repeat'

" easily search for, substitute, and abbreviate multiple variants of a word
" Bundle 'tpope/vim-abolish.git'

" Vim runtime files for Haml, Sass, and SCSS
"Bundle 'tpope/vim-haml'
" Ruby on Rails power tools
"Bundle 'tpope/vim-rails'
" Vim Cucumber runtime files Ruby acceptance testing framework Cucumber
"Bundle 'tpope/vim-cucumber'

"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" AnsiEsc.vim : ansi escape sequences concealed, but highlighted as specified (conceal)
Plugin 'AnsiEsc.vim'

" Fugitive extension to manage and merge Git branches http://www.vim.org/scripts/script.php…
"Bundle 'idanarye/vim-merginal'

" Shows directory structure in pane.
" Bundle 'scrooloose/nerdtree'

" Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
" Bundle 'ctrlpvim/ctrlp.vim'

" Organize/Navigate projects of files (like IDE/buffer explorer)
" Bundle 'vimplugin/project.vim'

" Bundle 'MattesGroeger/vim-bookmarks'

" Tabmerge : Merge a tab's windows with the current tab 
"Bundle 'Tabmerge'

" SplitJoin : A vim plugin that simplifies the transition between multiline and
" single-line code http://www.vim.org/scripts/script.php?script_id=3613
"Bundle 'AndrewRadev/splitjoin.vim'

"" Macro Persistent Storage and Shareable Repository for VIM
"Bundle 'vim-scripts/marvim'

" Plugin to toggle, display and navigate marks
"Bundle 'kshenoy/vim-signature'

" Univeral Text Linking - Execute URLs, footnotes, open emails, organize ideas
"Bundle 'vim-scripts/utl.vim'

" Unload, delete or wipe a buffer without closing the window or split.
"Bundle 'qpkorr/vim-bufkill'

" Bundle 'tomtom/tcomment_vim'

"Bundle 'Konfekt/FastFold'

" Run shell commands asynchronously and show the output in Vim when they finish
"Bundle 'joonty/vim-do'

" gitk for Vim. http://www.gregsexton.org/portfolio/gitv/
" Bundle 'gregsexton/gitv'

" Syntastic is a syntax checking plugin for Vim that runs files through
" external syntax checkers and displays any resulting errors to the user.
" Bundle 'scrooloose/syntastic'

" Snippet repo.
" Bundle 'honza/vim-snippets'

" True Sublime Text style multiple selections for Vim
" Bundle 'terryma/vim-multiple-cursors'

" Gundo.vim is Vim plugin to visualize your Vim undo tree.
" Bundle 'sjl/gundo.vim'

" The fancy start screen for Vim.
" Bundle 'mhinz/vim-startify'

" space.vim - Smart Space key for Vim
" Bundle 'spiiph/vim-space'

" Bundle 'sheerun/vim-polyglot'
" Bundle 'vim-scripts/crontab.vim'
" Bundle 'amal-khailtash/vim-do-syntax'

" Disabled because it improperly maps to <C-D> and so it causes error.
" Bundle 'WolfgangMehner/awk-support'
" Bundle 'WolfgangMehner/bash-support'
" Bundle 'WolfgangMehner/git-support'
" Bundle 'WolfgangMehner/matlab-support'
" Bundle 'WolfgangMehner/python-support'
" Bundle 'WolfgangMehner/verilog-support'
" Bundle 'WolfgangMehner/vim-support'


" The Most Recently Used (MRU) plugin provides an easy access to a list of
" recently opened/edited files in Vim.
" Bundle 'yegappan/mru'

" Zoom in/out of windows. Full screen a pane / revert to pane view.
" Bundle 'vim-scripts/ZoomWin'
" Always have a nice view for vim split windows!
" Bundle 'zhaocai/GoldenView.Vim'

" Conque is a Vim plugin which allows you to run interactive programs, such as
" bash on linux or powershell.exe on Windows, inside a Vim buffer.
" Bundle 'vim-scripts/Conque-Shell'
" Bundle 'vim-scripts/Conque-GDB'
"" A plugin to debug program with gdb by using vim
" Disables because it requires skibyte/gdblib
" Requires "python2 setup.py build && sudo python2 setup.py install to be run.
" Bundle 'skibyte/gdblib'
" Bundle 'skibyte/gdb-from-vim'

" TODO: Add to cpp dev. Check for clang-format
"Bundle 'rhysd/vim-clang-format'

"Bundle 'dkprice/vim-easygrep'

"Bundle 'neilagabriel/vim-geeknote'


