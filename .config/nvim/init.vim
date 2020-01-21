"  ██████ ▓█████  ▒█████   ▄████▄   ▄▄▄       ███▄ ▄███▓ ▒█████
"▒██    ▒ ▓█   ▀ ▒██▒  ██▒▒██▀ ▀█  ▒████▄    ▓██▒▀█▀ ██▒▒██▒  ██▒
"░ ▓██▄   ▒███   ▒██░  ██▒▒▓█    ▄ ▒██  ▀█▄  ▓██    ▓██░▒██░  ██▒
"  ▒   ██▒▒▓█  ▄ ▒██   ██░▒▓▓▄ ▄██▒░██▄▄▄▄██ ▒██    ▒██ ▒██   ██░
"▒██████▒▒░▒████▒░ ████▓▒░▒ ▓███▀ ░ ▓█   ▓██▒▒██▒   ░██▒░ ████▓▒░
"▒ ▒▓▒ ▒ ░░░ ▒░ ░░ ▒░▒░▒░ ░ ░▒ ▒  ░ ▒▒   ▓▒█░░ ▒░   ░  ░░ ▒░▒░▒░
"░ ░▒  ░ ░ ░ ░  ░  ░ ▒ ▒░   ░  ▒     ▒   ▒▒ ░░  ░      ░  ░ ▒ ▒░
"░  ░  ░     ░   ░ ░ ░ ▒  ░          ░   ▒   ░      ░   ░ ░ ░ ▒
"      ░     ░  ░    ░ ░  ░ ░            ░  ░       ░       ░ ░
"                         ░
" ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄
"▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█
" ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄
"  ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"   ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"   ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"   ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒
"     ░░   ▒ ░░      ░     ░░   ░ ░
"
" Filename:     .vimrc
" Github:       https://github.com/seocamo/dotfiles
" Maintainer:   Seocamo
" behavior modification customizations
"set cuc cul
abbr _SH #!/bin/sh

" Loadding Plugins {{{
" ensures that Syntax plugin is loaded
" Install Plug {{{
set nocompatible
filetype off

" auto install plugins with plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

" plugin list
call plug#begin()
" Genenal plugins {{{
" Replace text with the contents of a register. [count]["x]gr{motion} [count]["x]grr {Visual}["x]gr
Plug 'vim-scripts/ReplaceWithRegister'
" debug plugin
Plug 'vim-vdebug/vdebug'
" multiple cursors
Plug 'terryma/vim-multiple-cursors'

Plug 'mariappan/dragvisuals.vim'
Plug 'nixon/vim-vmath'

Plug 'djoshea/vim-autoread'
Plug 'joereynolds/SQHell.vim'
" }}}
" resize windows in vim naturally
"Plug 'simeji/winresizer', { 'on': 'WinResizerStartResize' }

" TimPope: {{{
" allow (non-native) plugins to use the . command
Plug 'tpope/vim-repeat'
" }}}

" Neovim: {{{
if has('nvim')
    " abstraction on top of neovim terminal
    Plug 'kassio/neoterm'

    " Highlight Yanked String
    Plug 'machakann/vim-highlightedyank'
endif
" }}}

" Comments plugins {{{
" comment plugin
Plug 'scrooloose/nerdcommenter'
" Comment stuff out. gcc gc
Plug 'tpope/vim-commentary'
" }}}

" Motion plugins {{{
" surround keys
Plug 'tpope/vim-surround'
" vim motion on Speed
Plug 'easymotion/vim-easymotion'
" }}}

" Search plugins {{{
" search in all the files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" auto update ctags
Plug 'craigemery/vim-autotag'
" auto complete
Plug 'Valloric/YouCompleteMe'
" add delimiter
"Plug 'Raimondi/delimitMate'
" }}}

" Git plugins {{{
" git helper
Plug 'tpope/vim-fugitive'
" git in gutter
Plug 'airblade/vim-gitgutter'
" }}}

" Bars & windows plugins {{{
" sidebar
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'tsony-tsonev/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" undo tree
Plug 'sjl/gundo.vim'
" bottom bar
Plug 'vim-airline/vim-airline'
" bottom bar theme
Plug 'vim-airline/vim-airline-themes'
" }}}

" Styling {{{
" syntex checker
"Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'
" Format+Lint: {{{
" staticly check code and highlight errors (async syntastic replacement)
"Plug 'w0rp/ale'
" }}}
" }}}

" Theme plugins {{{
Plug 'rakr/vim-one'
"Plug 'tomasiser/vim-code-dark'
"Plug 'morhetz/gruvbox'
" Solarized8
"Plug 'lifepillar/vim-solarized8'
" color highlight
Plug 'ap/vim-css-color'
" Mustache syntax highlighting
Plug 'mustache/vim-mustache-handlebars', { 'for': 'mustache' }
" JSX syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'
" PHP syntax hightlighting
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
" html syntax highlight
Plug 'othree/html5.vim'
" JS syntax highlighting
Plug 'othree/yajs.vim'
" TS syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'
" Rust support
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" WebAssembly: {{{
" Syntax Highlighting:
Plug 'rhysd/vim-wasm', { 'for': 'wasm' }
" }}}
" Docker {{{
Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}
" }}}

" icons for nerd tree and airline etc, need to be loaded after other plugins
Plug 'ryanoasis/vim-devicons'
" }}}

" Disabled plugins {{{
"Plug 'nvim-completion-manager'
"Plug 'WebComplete'
"Plug 'languageClie'
"Plug 'nt-neovim'
"Plug 'ALE'
"Plug 'NVimux'
"Plug 'startify'

" JS Bundle syntex highlight
"Plug 'pangloss/vim-javascript'
" TS syntex highlight
"Plug 'leafgarland/typescript-vim'
" TS IDE features
"Plug 'Quramy/tsuquyomi'
" emmet for vim
"Plug 'mattn/emmet-vim'
" sidebar for tags
"Plug 'majutsushi/tagbar'

" }}}
call plug#end()

filetype plugin indent on
syntax on
" }}}

" Genenal Settings {{{
scriptencoding utf-16      " allow emojis in vimrc
set noshowmode        " don't show mode as airline already does
set mouse=a           " enable mouse (selection, resizing windows)
set iskeyword+=-      " treat dash separated words as a word text object
if !has('nvim')             " does not work on neovim
    set emoji                 " treat emojis 😄  as full width characters
    set cryptmethod=blowfish2 " set encryption to use blowfish2 (vim -x file.txt)
end
set ttyfast           " should make scrolling faster
set lazyredraw        " should make scrolling faster
iabbrev @@ pbry@itu.dk
iabbrev ccopy Copyleft 2019 Peter Bryrup.
" Debuging {{{
" vdebug
let g:vdebug_features = { 'max_children': 256 }
if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
let g:vdebug_options.break_on_open = 0
" let g:vdebug_options.ide_key = 'xdebug'
" fix docker get /app and make it to local code
" let g:vdebug_options.path_maps = { '/app': getcwd() }

"let g:vdebug_keymap = {
            "\    "run" : "<F5>",
            "\    "run_to_cursor" : "<Left>",
            "\    "step_over" : "<Right>",
            "\    "step_into" : "<Down>",
            "\    "step_out" : "<Up>",
            "\    "close" : "<F6>",
            "\    "detach" : "<F7>",
            "\    "set_breakpoint" : "<F10>",
            "\    "eval_visual" : "<F12>"
"\}
" }}}

" Visual draging {{{
" move line
nnoremap <C-J> :m .+1<cr>==
nnoremap <C-K> :m .-2<cr>==
inoremap <C-J> <esc>:m .+1<cr>==gi
inoremap <C-K> <esc>:m .-2<cr>==gi
vnoremap <C-J> :m '>+1<cr>gv=gv
vnoremap <C-K> :m '<-2<cr>=gi

" dragvisuals
let g:DVB_TrimWS = 1
vmap <expr> <S-Left> DVB_Drag('left')
vmap <expr> <S-Right> DVB_Drag('right')
vmap <expr> <S-Down> DVB_Drag('down')
vmap <expr> <S-Up> DVB_Drag('up')
vmap <expr> <leader>D DVB_Duplocate()

" Tab/shift-tab to indent/outdent in visual mode.
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" move lines up and down in visual mode
xnoremap <c-k> :move '<-2<CR>gv=gv
xnoremap <c-j> :move '>+1<CR>gv=gv
" }}}

" Math and Calc {{{
" Calculator
inoremap <c-b> <c-o>yiW<end>=<c-r>=<c-r>0<cr>
" vmath
vmap <expr> ++ VMATH_YankAndAnalyse()
nmap ++ vip++
" }}}

" Clipboard {{{
" bind to clipboard system
set clipboard=unnamedplus
" }}}

" Terminal {{{
set shell=/usr/bin/zsh
set encoding=utf-8
" ====================================
" NeoTerm:
" ====================================
let g:neoterm_repl_ruby = 'pry'
let g:neoterm_autoscroll = 1
"noremap <leader>T :below terminal<cr>
"noremap <leader>t :terminal<cr>
"map <leader>u :window difft<cr>

" }}}

" Visual special characters {{{
set backspace=indent,eol,start
"set fillchars+=vert:│
set fillchars=diff:⣿,vert:│
set showbreak=↪

" set unicode char for tab/nbsp/trail space ,eol:¬
exec "set listchars=tab:\uBB\uBB,nbsp:~,trail:\uB7,extends:❯,precedes:❮"
set list

" }}}

" Timeout {{{
" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
"set notimeout
set ttimeout
set ttimeoutlen=10
set timeoutlen=250

" fast change mode with esc
augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=250
augroup END

" }}}

" Auto commands {{{
" read file if change outside of vim
set autoread
augroup vimrcEx
    autocmd!
    " Vim layout rebalancing
    " automatically rebalance windows on vim resize
    autocmd VimResized * :wincmd =

    " Set syntax highlighting for specific file types
    autocmd BufRead,BufNewFile .babelrc set filetype=json
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile .eslintrc,.prettierrc set filetype=json
    " Enable spellchecking for Markdown
    autocmd FileType markdown setlocal spell
    " Automatically spell check git commit messages
    autocmd FileType gitcommit setlocal spell
    " Allow stylesheets to autocomplete hyphenated words
    autocmd FileType css,scss,sass setlocal iskeyword+=-
    " add support for comments in json (jsonc format used as configuration for
    " many utilities)
    autocmd FileType json syntax match Comment +\/\/.\+$+
    " notify if file changed outside of vim to avoid multiple versions
    autocmd FocusGained * checktime
augroup END

" Tigger autoread when changing buffers or coming back to vim in terminal
au FocusGained,BufEnter * :silent! !
" Tigger svae on exit buf or losing focus
"au FocusLost,WinLeave * :silent! w
" run zrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
autocmd BufReadPost *
            \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif
" redraw on delete buffer
autocmd BufUnload * :redraw
autocmd BufDelete * :redraw

autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" read file if change outside of vim
set autoread
au CursorHold * checktime
" }}}

" Spaces & wrapping {{{
" softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set nowrap
" }}}

" Misc {{{
" disable backup and swap
set nobackup nowritebackup noswapfile
set history=50

" change buffer without saving
set hidden

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone


" Line Return {{{
" Make sure Vim returns to the same line when you reopen a file.
" augroup line_return
"     au!
"     au BufReadPost *
"         \ if line("'\"") > 0 && line("'\"") <= line("$") |
"         \     execute 'normal! g`"zvzz' |
"         \ endif
" augroup END
" }}}

" cursor
set cursorline
set ruler

" relative number
set number relativenumber numberwidth=5

" split default below and to the right
set splitbelow splitright

" Always use vertical diffs
set diffopt+=vertical

" scroll off the screen
set scrolloff=8 sidescrolloff=15 sidescroll=1

" turn off error beeping and flashing in Vim
set visualbell
set t_vb=

" Typos
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>
command! -bang Wqa wqa<bang>
" }}}
" }}}

" Comments {{{
" disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" nerdcommenter
vmap -- <plug>NERDCommenterToggle
nmap -- <plug>NERDCommenterToggle

" }}}

" Section folding {{{
" fold on indent, nofoldenable ensure fold start open
set foldmethod=indent
"set foldmethod=syntax
"set foldlevelstart=10
set foldnestmax=10
set nofoldenable
"set foldenable
"set foldlevel=2

" Keep all folds open when a file is opened
augroup OpenAllFoldsOnFileOpen
    autocmd!
    autocmd BufRead * normal zR
augroup END

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}
set foldtext=MyFoldText()
" }}}

" Key mapping {{{
" leader spacebar
let mapleader = " "
"let maplocalleader = ","
" Fix alt key {{{
"for i in range(97,122)
"  let c = nr2char(i)
"  exec "map \e".c." <M-".c.">"
"  exec "map! \e".c." <M-".c.">"
"endfor
" }}}

" Noob help {{{
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <right> <nop>
inoremap <Left> <nop>
" }}}

" Tool mapping {{{
" split line
nnoremap <leader>s i<cr><esc><right>
" Stop highlight after searching
nnoremap <silent> <leader>, :noh<cr>
" black hole deletes
nnoremap <leader>d "_d
" spell-check set to <leader>s, 'o' for 'orthography'
map <leader>so :setlocal spell! spelllang=en_us<cr>
" replace all is aliased to S
nnoremap S :%s//g<left><left>
" replace word under cursor, globally, with confirmation
nnoremap <Leader>k :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
vnoremap <Leader>k y :%s/<C-r>"//gc<Left><Left><Left>

" rename current file
nnoremap <Leader>rn :Move <C-R>=expand("%")<CR>
" }}}

" Virual mapping {{{
" re-select lines
nnoremap <leader>V V`]
" select current line
nnoremap VV ^vg_
" Reselect last-pasted text
nnoremap gv `[v`]
" }}}

" Normalize editor {{{
"inserting blank lines
nnoremap <cr> o<esc>
nnoremap <bs> X
" map Ctrl + s to save in any mode
noremap <silent> <C-s> :update<cr>
vnoremap <silent> <C-s> <C-C>:update<cr>
inoremap <silent> <C-s> <C-O>:update<cr>
" }}}

" Buffer mapping {{{
" map buffer
nnoremap <leader>n :bn<cr>
nnoremap <leader>m :bp<cr>
nnoremap <leader>c :bd<cr>
nnoremap <leader>b :q<cr>
" split v
nnoremap <leader>sx <c-w>v
" close split
"nnoremap <leader>C <c-w>q
" }}}

" Windows mapping {{{
" Quicker window moverment
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
" close all other windows with <leader>wo
nnoremap <leader>wo <c-w>o

" Split window
nmap ss :split<cr>
nmap sv :vsplit<cr>
" toggle window
nmap s<space> <C-w>w
" Resize window
nmap sh <C-w><
nmap sk <C-w>-
nmap sj <C-w>+
nmap sl <C-w>>
nnoremap <leader>sa :vsplit <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <leader>se :edit <C-R>=expand("%:p:h") . "/" <CR>
" }}}

" Nav & motions {{{
" Nav wrap lines
nnoremap j gj
nnoremap k gk

" make S-Tab go the other way of just Tab
nmap <S-Tab> <C-o>

" goto middle of line
map gm :call cursor(0, virtcol('$')/2)<CR>
nnoremap <M-h> ^
nnoremap <M-j> <c-d>
nnoremap <M-k> <c-u>
nnoremap <M-l> $

" map <TAB>: to goto start of text of line
nnoremap gb ^
nnoremap § ^
nnoremap d§ d^
nnoremap c§ c^
nnoremap y§ y^

" map ½ to go to the end of line
nnoremap gn $
nnoremap ½ $
nnoremap d½ d$
nnoremap c½ c$
nnoremap y½ y$
" copy to end of line
nnoremap Y y$

nnoremap U "0p

" jump block
nmap Æ {
nmap æ }

" jump changes
nmap ø g;
nmap Ø g,

" jump changes
nmap å <c-]>
nmap Å g<c-]>
" Insert Mode Completion {{{

inoremap <c-f> <c-x><c-f>
inoremap <c-]> <c-x><c-]>
inoremap <c-l> <c-x><c-l>

" }}}

" More motions {{{
onoremap id i[
onoremap ad a[

onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>

onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>

function! s:NextTextObject(motion, dir)
    let c = nr2char(getchar())

    if c ==# "b"
        let c= "("
    elseif c ==# "B"
        let c= "{"
    elseif c ==# "d"
        let c= "["
    endif

    exe "normal! ".a:dir.c."v".a:motion.c
endfunction
" }}}

" }}}
" }}}

" Searching {{{
" ignore search
" enable autocompletion
set wildmenu
set wildmode=longest,list,full

set wildignore+=.hg,.git,.svn                               " ignore version control
set wildignore+=*.aux,*.out,*.toc                           " ignore LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg              " ignore binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest            " ignore compiled object files
set wildignore+=*.spl                                       " ignore compiled spelling word lists
set wildignore+=*.sw?                                       " ignore Vim swap files
set wildignore+=*.DS_Store                                  " ignore OSX bullshit

set wildignore+=*.luac                                      " ignore Lua byte code

set wildignore+=migrations                                  " ignore Django migrations
set wildignore+=*.pyc                                       " ignore Python byte code

set wildignore+=*.orig                                      " ignore Merge resolution files

set wildignore+=*.fasl                                      " ignore Lisp FASLs
set wildignore+=*.dx64fsl                                   " ignore CCL
set wildignore+=*.lx64fsl                                   " ignore CCL
set wildignore+=*/tmp/*                                     " ignore files in tmp directories
set wildignore+=*/target/*                                  " ignore files in target directories
set wildignore+=*/build/*                                   " ignore gradle build directories
set wildignore+=*.so                                        " ignore .so files
set wildignore+=*.o                                         " ignore .o files
set wildignore+=*.class                                     " ignore .class files
set wildignore+=*.swp                                       " ignore .swp files
set wildignore+=*.zip                                       " ignore .zip files
set wildignore+=*.pdf                                       " ignore .pdf files
set wildignore+=*/node_modules/*                            " ignore node modules
set wildignore+=*/bower_components/*                        " ignore bower components
set wildignore+=*/dist/*                                    " ignore grunt build directory
" search in current dir and any sub folder
set path=.,**
" Search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" find ctags in
set tags=./tags;,tags;
command! MakeTags !ctags -R .
" to index ctags -R. in folder

nnoremap <leader>/ :execute 'vimgrep /'.@/.'/g %'<cr>:copen<cr>
nnoremap <leader>? :execute "Ack! '" . substitute(substitute(substitute(@/, "\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<cr>
" Ack motions {{{

" Motions to Ack for things.  Works with pretty much everything, including:
"
"   w, W, e, E, b, B, t*, f*, i*, a*, and custom text objects
"
" Awesome.
"
" Note: If the text covered by a motion contains a newline it won't work.  Ack
" searches line-by-line.

"nnoremap <silent> <leader>A :set opfunc=<SID>AckMotion<CR>g@
"xnoremap <silent> <bs> :<C-U>call <SID>AckMotion(visualmode())<CR>

" nnoremap <leader>A :Ack! '\b<c-r><c-w>\b'<cr>
" nnoremap <bs> :Ack! '\b<c-r><c-w>\b'<cr>

" With C-R C-W, according to the help: "With CTRL-W the part of the word that
" was already typed is not inserted again."  Because we're using \b to ack for
" word boundaries, the command string looks like `:Ack! '\b` at this point, and
" so if the word we're on happens to start with a lowercase b (e.g. "bonkers")
" it will be skipped, and we'll end up with `:Ack! '\bonkers` and find nothing.
" It took me a good long time to notice this one.  Computers are total fucking
" garbage.
"nnoremap <bs> viw:<C-U>call <SID>AckMotion(visualmode())<CR>

function! s:CopyMotionForType(type)
    if a:type ==# 'v'
        silent execute "normal! `<" . a:type . "`>y"
    elseif a:type ==# 'char'
        silent execute "normal! `[v`]y"
    endif
endfunction

function! s:AckMotion(type) abort
    let reg_save = @@

    call s:CopyMotionForType(a:type)

    execute "normal! :Ack! --literal " . shellescape(@@) . "\<cr>"

    let @@ = reg_save
endfunction

" }}}
" fzf
augroup fzf
    autocmd!
augroup END

" Key mapping

" History of file opened
nnoremap <leader>o :History<cr>

" Buffers opens
"nnoremap <leader>w :Buffers<cr>

" Files recursively from pwd
nnoremap <leader>p :Files<cr>

" Ex commands
"nnoremap <leader>r :Commands<cr>
" Ex command history. <C-e> to modify the command
"nnoremap <leader>z :History:<cr>
nnoremap <leader>x :GFiles?<cr>
":Rgi<space>
let g:oldsearch = ''
" type text to search
nnoremap <leader>zc :call FzfSearchNone('Rgi')<cr>
"nnoremap <leader>A :call FzfSearchNone('Rg')<cr>
" search current word
nnoremap <leader>zx :call FzfSearchThis('Rgi', expand("<cword>"))<cr>
"nnoremap <leader>Q :call FzfSearchThis('Rg', expand("<cword>"))<cr>
" search again
nnoremap <leader>zz :call FzfSearchThat('Rgi')<cr>
"nnoremap <leader>Z :call FzfSearchThat('Rg')<cr>

function! FzfSearchNone(searchcmd)
    let j = input("Please select your search string: ")
    call FzfSearchThis(a:searchcmd, j)
endfunction
function! FzfSearchThat(searchcmd)
    exec a:searchcmd." ".g:oldsearch
endfunction

function! FzfSearchThis(searchcmd, oldsearch)
    let g:oldsearch = a:oldsearch
    call FzfSearchThat(a:searchcmd)
endfunction

autocmd fzf VimEnter * tnoremap <silent><C-h> <Left>
autocmd fzf VimEnter * tnoremap <silent><C-j> <Down>
autocmd fzf VimEnter * tnoremap <silent><C-k> <Up>
autocmd fzf VimEnter * tnoremap <silent><C-l> <Right>

"" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)

" ripgrep command to search in multiple files
autocmd fzf VimEnter * command! -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)

" ripgrep - ignore the files defined in ignore files (.gitignore...)
autocmd fzf VimEnter * command! -nargs=* Rgi
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)

" ripgrep - ignore the files defined in ignore files (.gitignore...) and doesn't ignore case
autocmd fzf VimEnter * command! -nargs=* Rgic
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --fixed-strings --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)

" ripgrep - ignore the files defined in ignore files (.gitignore...) and doesn't ignore case
autocmd fzf VimEnter * command! -nargs=* Rgir
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)

" ripgrep - ignore the files defined in ignore files (.gitignore...) and doesn't ignore case and activate regex search
autocmd fzf VimEnter * command! -nargs=* Rgr
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --hidden --no-ignore --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)

" Customize fzf colors to match your color scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-b': 'split',
            \ 'ctrl-v': 'vsplit'
            \ }
" }}}

" Git {{{
" git
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
" }}}

" SQL - dd/e/s/S/ZZ {{{
let g:sqh_connections = {
\  'default': {
\    'user': 'root',
\    'password': '1234',
\    'host': 'localhost',
\    'database': 'learnit'
\  }
\}
" }}}

" Bars & windows {{{
" status bar
set showcmd
set laststatus=2

" git status bar
"set statusline=%{FugitiveStatisLine()}
map <leader>- :GundoToggle<cr>

" toggle nerdTree
map <leader>< :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:NERDTreeIgnore = ['^node_modules$']

let g:NERDTreeIgnore = [
            \ '\.vim$',
            \ '\~$',
            \ '\.beam',
            \ 'elm-stuff',
            \ 'deps',
            \ '_build',
            \ '.git',
            \ 'node_modules',
            \ 'tags',
            \ ]
" }}}

" Styling {{{
" automatic indenting
set ai si
" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
set autoindent
" auto indent php and js files on write
"autocmd BufWritePre *.php :call AutoIndentSave(1000)
"autocmd BufWritePre *.js :call AutoIndentSave(1000)

function! AutoIndentSave(maxlines)
    if line('$') < a:maxlines
        :normal maggVG=`a
    endif
endfunction

" Ale
nnoremap <silent> <leader>. :ALEToggle<cr>
nmap <silent> <leader>æ :ALEPreviousWrap<cr>
nmap <silent> <leader>ø :ALENextWrap<cr>
nnoremap <silent> <leader>å :ALEGoToDefinition<cr>
let b:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'php': ['php_cs_fixer', 'phpcbf', 'prettier'],
\   '*': ['remove_trailing_lines', 'trim_whitespace']
\}
let g:ale_fix_on_save = 1
let g:ale_completion_tsserver_autoimport = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_php_phan_use_client = 1
let g:ale_php_phpcs_standard = '~/Workspace/Utils/itucs'

" SyntasticToggleMode
"nnoremap <silent> <leader>. :call SynErrToggle()<cr>
"let g:synerr_toggle = 0
"function! SynErrToggle()
    "if g:synerr_toggle
        "SyntasticToggleMode
        "let g:synerr_toggle = 0
    "else
        "SyntasticToggleMode
        "SyntasticCheck
        "let g:synerr_toggle = 1
    "endif
"endfunction
"" find next , without a space after
"map <leader>f :/\v,(\S)\@=<cr>

"" auto indent
"nnoremap <leader>i :call AutoIndentSave(10000)<cr>
"" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_mode_map = {
            "\    "mode": "passive",
            "\    "active_filetypes": [],
            "\    "passive_filetypes": []
            "\}
" }}}

" Theme and colors {{{
syntax enable
set background=dark

" Don't try to highlight lines longer then 800 charactes.
set synmaxcol=800

" if you have Neovim >= 0.1.5
if (has("termguicolors"))
    let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
    let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
    set termguicolors
endif

"let g:solarized_termtrans = 1
"let g:solarized_termcolors = 256
"let g:solarized_statusline = "flat"
"colorscheme solarized8_flat
" Themes
"let g:airline_theme='ravenpower'

if or(or(has("gui_qt"), has("gui_gtk2")), has("gui_gtk3"))
    set guifont=SourceCodePro\ Nerd\ Font\ Regular\ 10
endif

set t_Co=256
set t_ut=
"colorscheme codedark
"let g:airline_theme = 'codedark'

"function! PhpSyntaxOverride()
""phpDefine pink
"hi! link phpDocTags phpType
"hi! link phpDocParam jsClassDefinition
"hi! link phpMethodsVar phpIdentifier
"hi! link phpMethod Function
"hi! link phpFunction Function
"hi! link phpClass jsClassDefinition
"hi! link phpUseClass jsClassDefinition
"hi! link delimiter phpType
""hi! link phpUseNamespaceSeparator jsClassDefinition
""hi! link phpClassNamespaceSeparator jsClassDefinition

"syn match phpSemi /;/ contained containedin=phpRegion
"hi phpSemi guifg=#a0a0a0 guibg=NONE gui=NONE
"syn match phpParentOnly "[()]" contained containedin=phpParent
"hi phpParentOnly guifg=#d0f0c0 guibg=NONE gui=NONE
"endfunction

"augroup phpSyntaxOverride
"autocmd!
"autocmd FileType php call PhpSyntaxOverride()
"augroup end
"exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:codedark_term256 ? a:fg.cterm256 : a:fg.cterm)
"let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
" fix

" mark line at col 80
highlight ColorColumn guibg=#003300 ctermbg=green
call matchadd('ColorColumn', '\%81v', 100)

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

let g:airline_theme='one'
let g:one_allow_italics = 1

colorscheme one
set background=dark " for the dark version
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi CursorLine guibg=NONE ctermbg=NONE
hi CursorLineNr guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi vimUserCmd guibg=NONE ctermbg=NONE
hi vimLineComment guifg=#608B4E
hi Folded guibg=#608B4E

let g:airline_theme='ravenpower'
" vim-devicons - themes
let g:airline_powerline_fonts = 1
" Synstack {{{

" Show the stack of syntax highlighting classes affecting whatever is under the cursor.
function! SynStack()
    echo join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'), " > ")
endfunc

nnoremap <F12> :call SynStack()<CR>

" }}}
" }}}

" Templates {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" templates Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:html_indent_tags = 'li|p'

" Navigating with guides
"inoremap <leader>l <Esc>/<++><Enter>"_c4l
vnoremap <leader>l <Esc>/<++><Enter>"_c4l
map <leader>l <Esc>/<++><Enter>"_c4l

"""HTML
autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O
autocmd FileType html inoremap ,gr <font color="green"></font><Esc>F>a
autocmd FileType html inoremap ,rd <font color="red"></font><Esc>F>a
autocmd FileType html inoremap ,yl <font color="yellow"></font><Esc>F>a
autocmd FileType html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
autocmd FileType html inoremap ,dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
autocmd FileType html inoremap &<space> &amp;<space>
" }}}

" Application execution {{{
" run the current line as Shell command
nnoremap <leader>ww !!$SHELL <cr>
" run the current line as vim command
nnoremap <leader>wq yy:normal @"<cr>

" start apps
" lint file with php
"map ,zq :!clear; php72 -l %<cr>
" purge learnit caches
map ,za :!clear;echo "purge";cd /home/peter/Workspace/Web/learnit/;php72 /home/peter/Workspace/Web/learnit/admin/cli/purge_caches.php<cr><cr>
" uglify AMD
map ,zs :!clear;echo "uglify";cd %:h/..; /home/peter/.config/yarn/global/node_modules/.bin/uglifyjs --verbose --warn -o ./build/%:t:r.min.%:e -- ./src/%:t <cr>
" code checker
map ,zd :!cd /home/peter/Workspace/Web/learnit/; php72 /home/peter/Workspace/Web/learnit/local/codechecker/run.php %<cr>
" code lint
map ,zf :!clear;php72 -l %<cr>
" JS linting
map ,zc :!clear;echo "eslint";/home/peter/.config/yarn/global/node_modules/.bin/eslint %<cr>
" JS linting with fixing
map ,zx :!clear;echo "eslint fix";/home/peter/.config/yarn/global/node_modules/.bin/eslint % --fix<cr>

map ,zw :exec "!/usr/bin/firefox 'https://www.php.net/manual-lookup.php?pattern=".expand("<cword>")."&scope=quickref'"<cr><cr>

" }}}

" Config file execution {{{
nnoremap <leader>vt :vsp ~/.todo.md<CR>
nnoremap <leader>ve :vsp $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC <bar> :doautocmd BufRead<CR> :normal zv<cr>
" }}}

" For NeoVim {{{
if has('nvim')
    " use neovim-remote (pip3 install neovim-remote) allows
    " opening a new split inside neovim instead of nesting
    " neovim processes for git commit
    let $VISUAL      = 'nvr -cc split --remote-wait +"setlocal bufhidden=delete"'
    let $GIT_EDITOR  = 'nvr -cc split --remote-wait +"setlocal bufhidden=delete"'
    let $EDITOR      = 'nvr -l'
    let $ECTO_EDITOR = 'nvr -l'

    " interactive find replace preview
    set inccommand=nosplit

    " share data between nvim instances (registers etc)
    augroup SHADA
        autocmd!
        autocmd CursorHold,TextYankPost,FocusGained,FocusLost *
                    \ if exists(':rshada') | rshada | wshada | endif
    augroup END

    if has('nvim-0.4')
        " set pum background visibility to 20 percent
        set pumblend=20

        " set file completion in command to use pum
        set wildoptions=pum
    endif

    " Navigate neovim + neovim terminal emulator with alt+direction
    tnoremap <silent><C-h> <C-\><C-n><C-w>h
    tnoremap <silent><C-j> <C-\><C-n><C-w>j
    tnoremap <silent><C-k> <C-\><C-n><C-w>k
    tnoremap <silent><C-l> <C-\><C-n><C-w>l

    tnoremap <silent><M-h> <C-\><C-N><C-w>h
    tnoremap <silent><M-j> <C-\><C-N><C-w>j
    tnoremap <silent><M-k> <C-\><C-N><C-w>k
    tnoremap <silent><M-l> <C-\><C-N><C-w>l

    " easily escape terminal
    tnoremap <leader><esc> <C-\><C-n><esc><cr>
    tnoremap <C-o> <C-\><C-n><esc><cr>

    " quickly toggle term
    nnoremap <silent> <leader>t :vertical botright Ttoggle<cr><C-w>l
    nnoremap <silent> <leader>T :botright Ttoggle<cr><C-w>j
    nnoremap <silent> <leader>rt :vertical botright Ttoggle<cr><C-w>l

    " close terminal
    tnoremap <silent> <leader>t <C-\><C-n>:Ttoggle<cr>
    tnoremap <silent> <leader><space> <C-\><C-n>:Ttoggle<cr>

    " send stuff to REPL using NeoTerm
    nnoremap <silent> <c-s>l :TREPLSendLine<CR>
    vnoremap <silent> <c-s>s :TREPLSendSelection<CR>

    " pasting works quite well in neovim as is so disabling yo
    nnoremap <silent> yo o
    nnoremap <silent> yO O
endif
" }}}

" For VimPlug {{{
function! PlugGx()
    let l:line = getline('.')
    let l:sha  = matchstr(l:line, '^  \X*\zs\x\{7,9}\ze ')

    if (&filetype ==# 'vim-plug')
        " inside vim plug splits such as :PlugStatus
        let l:name = empty(l:sha)
                    \ ? matchstr(l:line, '^[-x+] \zs[^:]\+\ze:')
                    \ : getline(search('^- .*:$', 'bn'))[2:-2]
    else
        " in .vimrc.bundles
        let l:name = matchlist(l:line, '\v/([A-Za-z0-9\-_\.]+)')[1]
    endif

    let l:uri  = get(get(g:plugs, l:name, {}), 'uri', '')
    if l:uri !~? 'github.com'
        return
    endif
    let l:repo = matchstr(l:uri, '[^:/]*/'.l:name)
    let l:url  = empty(l:sha)
                \ ? 'https://github.com/'.l:repo
                \ : printf('https://github.com/%s/commit/%s', l:repo, l:sha)
    call netrw#BrowseX(l:url, 0)
endfunction

augroup PlugGxGroup
    autocmd!
    autocmd BufRead,BufNewFile .vimrc.bundles nnoremap <buffer> <silent> gx :call PlugGx()<cr>
    autocmd FileType vim-plug nnoremap <buffer> <silent> gx :call PlugGx()<cr>
augroup END
" }}}

" Load project specific vimrc {{{

if (getcwd() != expand('~')) && filereadable(getcwd() . '/.vimrc')
    echom '-------------> loading project specific local vimrc'
    set exrc
    execute 'source ' . getcwd() . '/.vimrc'
endif

" }}}


" (OLD)Random functions {{{
" To get out of diff view you can use the :diffoff command.
function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" jump
function! GotoJump()
    jumps
    let j = input("Please select your jump: ")
    if j != ''
        let pattern = '\v\c^\+'
        if j =~ pattern
            let j = substitute(j, pattern, '', 'g')
            execute "normal " . j . "\<c-i>"
        else
            execute "normal " . j . "\<c-o>"
        endif
    endif
endfunction
nmap <Leader>j :call GotoJump()<CR>

function! GotoDefinition()
    let n = search("\\<".expand("<cword>")."\\>[^(]*([^)]*)\\s*\\n*\\s*{")
endfunction
"map <leader>k :call GotoDefinition()<CR>
" }}}

" vim:foldmethod=marker:foldlevel=0:foldenable
