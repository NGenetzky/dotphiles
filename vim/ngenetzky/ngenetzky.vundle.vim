
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker:
"

" Vundle error: Name collision for Plugin scrooloose/nerdtree. Plugin scrooloose/nerdtree previously used the nam
" e "nerdtree". Skipping Plugin scrooloose/nerdtree.
" Vundle error: Name collision for Plugin altercation/vim-colors-solarized. Plugin altercation/vim-colors-solariz
" ed previously used the name "vim-colors-solarized". Skipping Plugin altercation/vim-colors-solarized.
" Vundle error: Name collision for Plugin tpope/vim-surround. Plugin tpope/vim-surround previously used the name
"vim-surround". Skipping Plugin tpope/vim-surround.
" Vundle error: Name collision for Plugin tpope/vim-repeat. Plugin tpope/vim-repeat previously used the name "vim
" -repeat". Skipping Plugin tpope/vim-repeat.
" Vundle error: Name collision for Plugin ctrlpvim/ctrlp.vim. Plugin ctrlpvim/ctrlp.vim previously used the name
"ctrlp.vim". Skipping Plugin ctrlpvim/ctrlp.vim.
" Vundle error: Name collision for Plugin terryma/vim-multiple-cursors. Plugin terryma/vim-multiple-cursors previ
" ously used the name "vim-multiple-cursors". Skipping Plugin terryma/vim-multiple-cursors.
" Vundle error: Name collision for Plugin flazz/vim-colorschemes. Plugin flazz/vim-colorschemes previously used t
" he name "vim-colorschemes". Skipping Plugin flazz/vim-colorschemes.
" Vundle error: Name collision for Plugin tpope/vim-abolish.git. Plugin tpope/vim-abolish.git previously used the
"  name "vim-abolish". Skipping Plugin tpope/vim-abolish.git.
" Vundle error: Name collision for Plugin scrooloose/syntastic. Plugin scrooloose/syntastic previously used the n
" ame "syntastic". Skipping Plugin scrooloose/syntastic.
" Vundle error: Name collision for Plugin tpope/vim-fugitive. Plugin tpope/vim-fugitive previously used the name
"vim-fugitive". Skipping Plugin tpope/vim-fugitive.
" Vundle error: Name collision for Plugin mattn/webapi-vim. Plugin mattn/webapi-vim previously used the name "web
" api-vim". Skipping Plugin mattn/webapi-vim.
" Vundle error: Name collision for Plugin mattn/gist-vim. Plugin mattn/gist-vim previously used the name "gist-vi
" m". Skipping Plugin mattn/gist-vim.
" Vundle error: Name collision for Plugin tpope/vim-commentary. Plugin tpope/vim-commentary previously used the n
" ame "vim-commentary". Skipping Plugin tpope/vim-commentary.
" Vundle error: Name collision for Plugin honza/vim-snippets. Plugin honza/vim-snippets previously used the name
"vim-snippets". Skipping Plugin honza/vim-snippets.
" Vundle error: Name collision for Plugin tpope/vim-markdown. Plugin tpope/vim-markdown previously used the name
"vim-markdown". Skipping Plugin tpope/vim-markdown.

" TPOPE. YAATPP = Yet Another Amazing Tim Pope Plugin {
    " a Git wrapper so awesome, it should be illegal
    " Bundle 'tpope/vim-fugitive'
    " comment stuff out
    " Bundle 'tpope/vim-commentary'

    " AnsiEsc.vim : ansi escape sequences concealed, but highlighted as specified (conceal)
    Plugin 'AnsiEsc.vim'

    " Fugitive extension to manage and merge Git branches http://www.vim.org/scripts/script.php…
    Bundle 'idanarye/vim-merginal'

    "" speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
    Bundle 'tpope/vim-speeddating'

    " quoting/parenthesizing made simple
    " Bundle 'tpope/vim-surround'

    " enable repeating supported plugin maps with "."
    " Bundle 'tpope/vim-repeat'
    " easily search for, substitute, and abbreviate multiple variants of a word
    " Bundle 'tpope/vim-abolish.git'

    " Vim Markdown runtime files
    " Bundle 'tpope/vim-markdown'

    Bundle 'tpope/vim-obsession'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-sensible'

    " Vim runtime files for Haml, Sass, and SCSS
    UnBundle 'tpope/vim-haml'
    " Ruby on Rails power tools
    UnBundle 'tpope/vim-rails'
    " Vim Cucumber runtime files Ruby acceptance testing framework Cucumber
    UnBundle 'tpope/vim-cucumber'
" }

" Language Dependent {

" Disabled because it improperly maps to <C-D> and so it causes error.
" Bundle 'WolfgangMehner/awk-support'
" Bundle 'WolfgangMehner/bash-support'
" Bundle 'WolfgangMehner/git-support'
" Bundle 'WolfgangMehner/matlab-support'
" Bundle 'WolfgangMehner/python-support'
" Bundle 'WolfgangMehner/verilog-support'
" Bundle 'WolfgangMehner/vim-support'

" C++ {
" C/C++ IDE --  Write and run programs. Insert statements, idioms, comments etc. 
" Bundle 'WolfgangMehner/c-support'

" Disable Bundle when Exuberant Ctags is not installed.
if executable("ctags")
    " vim-misc is required for vim-easytags
    Bundle 'xolox/vim-misc'
    " Automated tag generation and syntax highlighting in Vim
    Bundle 'xolox/vim-easytags'
endif

" Shows the current tag structure in a pane.
" Bundle 'majutsushi/tagbar'

" Vim plugin for c/c++ developers and Vim lovers
" Bundle 'bbchung/clighter8'

" }

" Bitbake {

Bundle 'kergoth/vim-bitbake'

" }

" }

" Work with External Programs {

if executable("tmux") " {
    Bundle 'christoomey/vim-tmux-navigator'

    " Vimux effortless vim and tmux interaction
    Bundle 'benmills/vimux'
endif
" }

" Grep {
Bundle 'dkprice/vim-easygrep'
" }

" Clang format integration {
Bundle 'rhysd/vim-clang-format'
" }

" Interactive shell {
" Conque is a Vim plugin which allows you to run interactive programs, such as
" bash on linux or powershell.exe on Windows, inside a Vim buffer.
" Bundle 'vim-scripts/Conque-Shell'
" Bundle 'vim-scripts/Conque-GDB'
"" A plugin to debug program with gdb by using vim
" Disables because it requires skibyte/gdblib
" Requires "python2 setup.py build && sudo python2 setup.py install to be run.
" Bundle 'skibyte/gdblib'
" Bundle 'skibyte/gdb-from-vim'
" }

" Geeknote {
" Bundle 'neilagabriel/vim-geeknote'
" }

" }

" Completion Engine {
" Ultimate auto-completion system for Vim
if (704 <= v:version)
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neocomplete'
endif

" if has('python')
"     Bundle 'Valloric/YouCompleteMe'
" endif
" }

" Snippet Engine {
" UltiSnips requires python but is better
" if executable("python")
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
" }

" Window Management {
" Zoom in/out of windows. Full screen a pane / revert to pane view.
" Bundle 'vim-scripts/ZoomWin'
" Always have a nice view for vim split windows!
" Bundle 'zhaocai/GoldenView.Vim'
" }

" Status Line{
" A light and configurable statusline/tabline for Vim.
Bundle 'itchyny/lightline.vim'

" lean & mean status/tabline for vim that's light as air
"UnBundle 'bling/vim-airline'

" }

" unite - Lists of things { 
" The unite or unite.vim plug-in can search and display information from
" arbitrary sources like files, buffers, recently used files or registers.
Bundle 'Shougo/neoyank.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neomru.vim'
Bundle 'Shougo/unite-outline'
Bundle 'Shougo/unite-ssh'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/unite.vim'

" The Most Recently Used (MRU) plugin provides an easy access to a list of
" recently opened/edited files in Vim.
" " Bundle 'yegappan/mru'
" }

" File Navigation {
" Shows directory structure in pane.
" Bundle 'scrooloose/nerdtree'

" Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
" Bundle 'ctrlpvim/ctrlp.vim'

" Organize/Navigate projects of files (like IDE/buffer explorer)
Bundle 'vimplugin/project.vim'

Bundle 'MattesGroeger/vim-bookmarks'

" }
" Syntax Bundles {
Bundle 'sheerun/vim-polyglot'
Bundle 'vim-scripts/crontab.vim'
Bundle 'amal-khailtash/vim-do-syntax'
" }

" Colorscheme {
    " precision colorscheme for the vim text editor
    " Bundle 'altercation/vim-colors-solarized'

    " one colorscheme pack to rule them all
    " Bundle 'flazz/vim-colorschemes'

    " Colorscheme for vim
    Bundle 'davidklsn/vim-sialoquent'

    Bundle 'tomasiser/vim-code-dark'

" }


" Others {
" Syntastic is a syntax checking plugin for Vim that runs files through
" external syntax checkers and displays any resulting errors to the user.
" Bundle 'scrooloose/syntastic'

" Snippet repo.
" Bundle 'honza/vim-snippets'

" True Sublime Text style multiple selections for Vim
" Bundle 'terryma/vim-multiple-cursors'

" Gundo.vim is Vim plugin to visualize your Vim undo tree.
Bundle 'sjl/gundo.vim'
" The fancy start screen for Vim.
" Bundle 'mhinz/vim-startify'

" space.vim - Smart Space key for Vim
Bundle 'spiiph/vim-space'

" vimscript for creating gists
" Bundle 'mattn/webapi-vim'
" Bundle 'mattn/gist-vim'

" Tabmerge : Merge a tab's windows with the current tab 
Bundle 'Tabmerge'

" SplitJoin : A vim plugin that simplifies the transition between multiline and
" single-line code http://www.vim.org/scripts/script.php?script_id=3613
Bundle 'AndrewRadev/splitjoin.vim'

""A simple, vimscript only, command runner for sending commands from vim to tmux.
" Bundle 'christoomey/vim-tmux-runner'

"" Macro Persistent Storage and Shareable Repository for VIM
Bundle 'vim-scripts/marvim'

" Plugin to toggle, display and navigate marks
Bundle 'kshenoy/vim-signature'

" Univeral Text Linking - Execute URLs, footnotes, open emails, organize ideas
Bundle 'vim-scripts/utl.vim'

" Unload, delete or wipe a buffer without closing the window or split.
Bundle 'qpkorr/vim-bufkill'

" gitk for Vim. http://www.gregsexton.org/portfolio/gitv/
" Bundle 'gregsexton/gitv'

" Bundle 'tomtom/tcomment_vim'

Bundle 'Konfekt/FastFold'

" Run shell commands asynchronously and show the output in Vim when they finish
Bundle 'joonty/vim-do'

" }

if filereadable(expand("~/.vim/vimrc.bundles.spf13")) && !exists("g:override_spf13_bundles")
" SPF13 Overrides {

    " github.com/garbas/vim-snipmate:
        " VimL, snipmate-snippets, engine sometimes behaves strange. Supports snippets/*
    UnBundle 'garbas/vim-snipmate'

    " github.com/Shougo/neosnippet:
        " VimL, supports snippets/* with some configuration.
    " neo-snippet plugin contains neocomplcache snippets source
    UnBundle 'Shougo/neosnippet'
    " The standard snippets repository for neosnippet
    UnBundle 'Shougo/neosnippet-snippets'

    " vim-snipmate default snippets
    "UnBundle 'honza/vim-snippets'

    " interpret a file by function and cache file automatically
    "UnBundle 'MarcWeber/vim-addon-mw-utils'

    " Some utility functions for VIM http://www.vim.org/scripts/script.php?script_id=1863
    "UnBundle 'tomtom/tlib_vim'

    " A tree explorer plugin for vim
    "UnBundle 'scrooloose/nerdtree'

    " Collection of color schemes for VIM
    " UnBundle 'spf13/vim-colors'

    " Inserts matching bracket, paren, brace or quote http://www.vim.org/scripts/script.php?script_id=1849
    UnBundle 'spf13/vim-autoclose'

    " Navigate and jump to function defs http://www.vim.org/scripts/script.php?script_id=4592
    "UnBundle 'tacahiroy/ctrlp-funky'

    " True Sublime Text style multiple selections for Vim
    "UnBundle 'terryma/vim-multiple-cursors'

    " Vim session manager http://www.vim.org/scripts/script.php?script_id=2010
    " UnBundle 'vim-scripts/sessionman.vim'

    " extended % matching for HTML, LaTeX, and many other languages http://www.vim.org/scripts/script.php?script_id=39
    UnBundle 'matchit.zip'

    " super simple vim plugin to show the list of buffers in the command bar
    UnBundle 'bling/vim-bufferline'

    " Vim motions on speed! http://www.vim.org/scripts/script.php?script_id=3526
    "UnBundle 'Lokaltog/vim-easymotion'

    " NERDTree and tabs together in Vim, painlessly
    "UnBundle 'jistr/vim-nerdtree-tabs'

    " one colorscheme pack to rule them all
    "UnBundle 'flazz/vim-colorschemes'

    " Display your undo history in a graph. http://www.vim.org/scripts/script.php?script_id=4177
    UnBundle 'mbbill/undotree'

    " A Vim plugin for visually displaying indent levels in code
    "UnBundle 'nathanaelkane/vim-indent-guides'

    " A plugin for automatically restoring file's cursor position and folding http://www.vim.org/scripts/script.php?script_id=4021
    "UnBundle 'vim-scripts/restore_view.vim'

    " Show a VCS diff using Vim's sign column
    "UnBundle 'mhinz/vim-signify'

    " :substitute preview
    "UnBundle 'osyo-manga/vim-over'

    " Create your own text objects http://www.vim.org/scripts/script.php?script_id=2100
    "UnBundle 'kana/vim-textobj-user'

    " provide text objects to select a block of lines which are similarly indented to the current line
    "UnBundle 'kana/vim-textobj-indent'

    " Smart selection of the closest text object
    "UnBundle 'gcmt/wildfire.vim'

    " Lightweight auto-correction for Vim
    UnBundle 'reedes/vim-litecorrect'

    " Improving on Vim's native sentence text object and motion
    "UnBundle 'reedes/vim-textobj-sentence'

    " Use € ̃curly€TM quote characters in Vim
    "UnBundle 'reedes/vim-textobj-quote'

    " Uncover usage problems in your writing
    UnBundle 'reedes/vim-wordy'

    " Syntax checking hacks for vim
    "UnBundle 'scrooloose/syntastic'

    " An Interface to WEB APIs
    "UnBundle 'mattn/webapi-vim'

    " vimscript for creating gists
    " UnBundle 'mattn/gist-vim'

    " Vim plugin for intensely orgasmic commenting
    "UnBundle 'scrooloose/nerdcommenter'

    " Vim script for text filtering and alignment
    "UnBundle 'godlygeek/tabular'

    " Ultimate auto-completion system for Vim
    " UnBundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neocomplcache'
    Bundle 'Shougo/neocomplete'

    " PHP Integration environment for Vim
    "UnBundle 'spf13/PIV'

    " vim plugin for inserting "use" statements automatically
    "UnBundle 'arnaud-lb/vim-php-namespace'

    " Twig syntax highlighting, snipMate, etc. - twig php templates
    UnBundle 'beyondwords/vim-twig'

    " Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
    "UnBundle 'klen/python-mode'

    " A set of menus/shortcuts to work with Python files
    UnBundle 'yssource/python.vim'

    " Extend the % motion and define g%, [%, and ]% motions for Python files
    UnBundle 'python_match.vim'

    " This is the pythoncomplete omni-completion script shipped with vim 7
    "UnBundle 'pythoncomplete'

    " distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing
    "UnBundle 'elzr/vim-json'

    " vim syntax for LESS (dynamic CSS)
    UnBundle 'groenewege/vim-less'

    " Vastly improved Javascript indentation and syntax support in Vim
    "UnBundle 'pangloss/vim-javascript'

    " highlighting and indenting JST/EJS syntax
    UnBundle 'briancollins/vim-jst'

    " CoffeeScript support for vim
    UnBundle 'kchmck/vim-coffee-script'

    " Automatically closes HTML tags once you finish typing them
    UnBundle 'amirh/HTML-AutoCloseTag'

    " Add CSS3 syntax support to vim's built-in
    UnBundle 'hail2u/vim-css3-syntax'

    " css/less/sass/html color preview for vim
    "UnBundle 'gorodinskiy/vim-coloresque'

    " Vim support for Rust file detection and syntax highlighting
    UnBundle 'wting/rust.vim'

    " Vim plugin for previewing markup files
    "UnBundle 'spf13/vim-preview'

    " Vim syntax for TOML
    UnBundle 'cespare/vim-toml'

    " Align pipes when you are editing Cucumber tables
    UnBundle 'quentindecock/vim-cucumber-align-pipes'

    " Vim files for editing Salt files
    UnBundle 'saltstack/salt-vim'
" }
endif


