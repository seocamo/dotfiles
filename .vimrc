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


" Plugins {{{
" insures that Syntax plugin is loaded
set nocompatible
filetype off

" auto install plugins with plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugin list
call plug#begin()
Plug 'tomasiser/vim-code-dark'
"Plug 'morhetz/gruvbox'
" sidebar
Plug 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" comment plugin
Plug 'scrooloose/nerdcommenter'
" git in gutter
Plug 'airblade/vim-gitgutter'
" surround keys
Plug 'tpope/vim-surround'
" Comment stuff out. gcc gc
Plug 'tpope/vim-commentary'
" Replace text with the contents of a register. [count]["x]gr{motion} [count]["x]grr {Visual}["x]gr
Plug 'vim-scripts/ReplaceWithRegister'
" vim motion on Speed
Plug 'easymotion/vim-easymotion'
" search in all the files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" git helper
Plug 'tpope/vim-fugitive'
" auto update ctags
Plug 'craigemery/vim-autotag'
" debug plugin
Plug 'vim-vdebug/vdebug'
" Solarized8
Plug 'lifepillar/vim-solarized8'
" auto complete
Plug 'Valloric/YouCompleteMe'
" bottom bar
Plug 'vim-airline/vim-airline'
" bottom bar theme
Plug 'vim-airline/vim-airline-themes'
" add delimiter
"Plug 'Raimondi/delimitMate'
" multiple cursors
Plug 'terryma/vim-multiple-cursors'
" syntex checker
Plug 'vim-syntastic/syntastic'

" color highlight
Plug 'ap/vim-css-color'

" Mustache syntax highlighting
Plug 'mustache/vim-mustache-handlebars'
" JSX syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'
" PHP syntax hightlighting
Plug 'StanAngeloff/php.vim'
" html syntax highlight
Plug 'othree/html5.vim'
" JS syntax highlighting
Plug 'othree/yajs.vim'
" TS syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

Plug 'mariappan/dragvisuals.vim'
Plug 'nixon/vim-vmath'

" undo tree
Plug 'sjl/gundo.vim'
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
call plug#end()

filetype plugin indent on
syntax on
" }}}

" Theme and colors {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
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

if or(or(has("gui_qt"), has("gui_gtk2")), has("gui_gtk3"))
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Regular\ 10
endif

set t_Co=256
set t_ut=
colorscheme codedark
let g:airline_theme = 'codedark'
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi CursorLine guibg=NONE ctermbg=NONE
hi CursorLineNr guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi vimUserCmd guibg=NONE ctermbg=NONE
function! PhpSyntaxOverride()
    "phpDefine pink
    hi! link phpDocTags phpType
    hi! link phpDocParam jsClassDefinition
    hi! link phpMethodsVar phpIdentifier
    hi! link phpMethod Function
    hi! link phpFunction Function
    hi! link phpClass jsClassDefinition
    hi! link phpUseClass jsClassDefinition
    hi! link delimiter phpType
    "hi! link phpUseNamespaceSeparator jsClassDefinition
    "hi! link phpClassNamespaceSeparator jsClassDefinition

    syn match phpSemi /;/ contained containedin=phpRegion
    hi phpSemi guifg=#a0a0a0 guibg=NONE gui=NONE
    syn match phpParentOnly "[()]" contained containedin=phpParent
    hi phpParentOnly guifg=#d0f0c0 guibg=NONE gui=NONE
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup end
"exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:codedark_term256 ? a:fg.cterm256 : a:fg.cterm)
"let s:cdLightBlue = {'gui': '#9CDCFE', 'cterm': s:cterm0C, 'cterm256': '117'}
" fix

" mark line at col 80
highlight ColorColumn guibg=#003300 ctermbg=green
call matchadd('ColorColumn', '\%81v', 100)

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Synstack {{{

" Show the stack of syntax highlighting classes affecting whatever is under the cursor.
function! SynStack()
  echo join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'), " > ")
endfunc

nnoremap <F12> :call SynStack()<CR>

" }}}
" }}}

" Genenal Settings {{{
set shell=/usr/bin/zsh
set encoding=utf-8

" disable backup and swap
set nobackup nowritebackup noswapfile
set history=50

" Status bar {{{
" status bar
set showcmd
set laststatus=2

" git status bar
"set statusline=%{FugitiveStatisLine()}
" }}}
" change buffer without saving
set hidden

" bind to clipboard system
set clipboard=unnamedplus


" Don't try to highlight lines longer then 800 charactes.
set synmaxcol=800

" find ctags in
set tags=./tags;,tags;
command! MakeTags !ctags -R .
" to index ctags -R. in folder

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone

" Resize splints when the window is resized
" au VimResized * :wincmd =

" read file if change outside of vim
set autoread

" Tigger autoread when changing buffers or coming back to vim in terminal
au FocusGained,BufEnter * :silent! !

" disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

set backspace=indent,eol,start
set fillchars=diff:⣿,vert:│
set fillchars=diff:⣿,vert:\|
set showbreak=↪

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
set autoindent
" auto indent php and js files on write
autocmd BufWritePre *.php :call AutoIndentSave(1000)
autocmd BufWritePre *.js :call AutoIndentSave(1000)

function! AutoIndentSave(maxlines)
    if line('$') < a:maxlines
        :normal maggVG=`a
    endif
endfunction
" set unicode char for tab/nbsp/trail space
exec "set listchars=tab:\uBB\uBB,nbsp:~,trail:\uB7,eol:¬,extends:❯,precedes:❮"
set list

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10

" fast change mode with esc
augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
augroup END

" run zrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Tabs, spaces, wrapping {{{
" softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set nowrap
 " }}}

" automatic indenting
set ai si

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

" }}}

" Random functions {{{
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
map <leader>k :call GotoDefinition()<CR>
" }}}

" Templates {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" templates Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:html_indent_tags = 'li|p'

" Navigating with guides
"inoremap <leader>m <Esc>/<++><Enter>"_c4l
vnoremap <leader>m <Esc>/<++><Enter>"_c4l
map <leader>m <Esc>/<++><Enter>"_c4l

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

" Key mapping {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""
" mapping config
"""""""""""""""""""""""""""""""""""""""""""""""""""

" leader spacebar
let mapleader = " "
"let maplocalleader = ","
"for i in range(97,122)
"  let c = nr2char(i)
"  exec "map \e".c." <M-".c.">"
"  exec "map! \e".c." <M-".c.">"
"endfor
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <right> <nop>
inoremap <Left> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <right> <nop>
nnoremap <Left> <nop>

" move line
nnoremap <C-J> :m .+1<cr>==
nnoremap <C-K> :m .-2<cr>==
inoremap <C-J> <esc>:m .+1<cr>==gi
inoremap <C-K> <esc>:m .-2<cr>==gi
vnoremap <C-J> :m '>+1<cr>gv=gv
vnoremap <C-K> :m '<-2<cr>=gi

" Quicker window moverment
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

"map <A-j> <C-w>j
"map <A-k> <C-w>k
"map <A-h> <C-w>h
"map <A-l> <C-w>l

noremap <Down> <C-d>
noremap <Up> <C-u>
noremap <Left> ^
noremap <Right> $

" Nav wrap lines
nnoremap j gj
nnoremap k gk

nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <c-o> <c-o>zz
nnoremap <leader>/ :execute 'vimgrep /'.@/.'/g %'<cr>:copen<cr>
nnoremap <leader>? :execute "Ack! '" . substitute(substitute(substitute(@/, "\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<cr>

" re-select lines
nnoremap <leader>V V`]
" split line
nnoremap <leader>S i<cr><esc><right>
" select current line
nnoremap VV ^vg_
" Calculator
inoremap <c-b> <c-o>yiW<end>=<c-r>=<c-r>0<cr>
" Insert Mode Completion {{{

inoremap <c-f> <c-x><c-f>
inoremap <c-]> <c-x><c-]>
inoremap <c-l> <c-x><c-l>

" }}}
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

" Ack motions {{{

" Motions to Ack for things.  Works with pretty much everything, including:
"
"   w, W, e, E, b, B, t*, f*, i*, a*, and custom text objects
"
" Awesome.
"
" Note: If the text covered by a motion contains a newline it won't work.  Ack
" searches line-by-line.

nnoremap <silent> <leader>A :set opfunc=<SID>AckMotion<CR>g@
xnoremap <silent> <bs> :<C-U>call <SID>AckMotion(visualmode())<CR>

" nnoremap <leader>A :Ack! '\b<c-r><c-w>\b'<cr>
" nnoremap <bs> :Ack! '\b<c-r><c-w>\b'<cr>

" With C-R C-W, according to the help: "With CTRL-W the part of the word that
" was already typed is not inserted again."  Because we're using \b to ack for
" word boundaries, the command string looks like `:Ack! '\b` at this point, and
" so if the word we're on happens to start with a lowercase b (e.g. "bonkers")
" it will be skipped, and we'll end up with `:Ack! '\bonkers` and find nothing.
" It took me a good long time to notice this one.  Computers are total fucking
" garbage.
nnoremap <bs> viw:<C-U>call <SID>AckMotion(visualmode())<CR>

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

" Reselect last-pasted text
nnoremap gv `[v`]

"inserting blank lines
nnoremap <cr> o<esc>

" goto middle of line
map gm :call cursor(0, virtcol('$')/2)<CR>

" Stop highlight after searching
nnoremap <silent> <leader>, :noh<cr>

" SyntasticToggleMode
nnoremap <silent> <leader>. :call SynErrToggle()<cr>
let g:synerr_toggle = 0
function! SynErrToggle()
    if g:synerr_toggle
        SyntasticToggleMode
        let g:synerr_toggle = 0
    else
        SyntasticToggleMode
        SyntasticCheck
        let g:synerr_toggle = 1
    endif
endfunction
" black hole deletes
nnoremap <leader>d "_d

map <leader>f :/\v,(\S)\@=<cr>

" split v
nnoremap <leader>vv <c-w>v
" close split
nnoremap <leader>C <c-w>q

map <leader>- :GundoToggle<cr>

" run the current line as Shell command
nnoremap <leader>ww !!$SHELL <cr>
" run the current line as vim command
nnoremap <leader>wq yy:normal @"<cr>

" spell-check set to <leader>s, 'o' for 'orthography'
map <leader>s :setlocal spell! spelllang=en_us<cr>

" find file
"map <leader>f :find<space>

" replace all is aliased to S
nnoremap S :%s//g<left><left>


" map <TAB>: to goto start of text of line
nnoremap § ^
nnoremap d§ d^
nnoremap c§ c^
nnoremap y§ y^

" map ½ to go to the end of line
nnoremap ½ $
nnoremap d½ d$
nnoremap c½ c$
nnoremap y½ y$

" map Ctrl + s to save in any mode
noremap <silent> <C-s> :update<cr>
vnoremap <silent> <C-s> <C-C>:update<cr>
inoremap <silent> <C-s> <C-O>:update<cr>

" map buffer
"map <leader>b :b<space>
map <leader>n :bn<cr>
map <leader>c :bd<cr>
nnoremap <leader>b :q<cr>

" git
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>


" nav tags
nnoremap <A-Left> <C-T>
nnoremap <A-Right> <C-]>

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

noremap <leader>T :below terminal<cr>
noremap <leader>t :sh<cr>
map <leader>u :window difft<cr>

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

nmap <S-Tab> <C-o>

" jump block
nmap Æ {
nmap æ }

" jump changes
nmap ø g;
nmap Ø g,

" jump changes
nmap å <c-]>
nmap Å g<c-]>

" auto indent
nnoremap <leader>i :call AutoIndentSave(10000)<cr>

nnoremap <leader>ve :vsp $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC <bar> :doautocmd BufRead<CR> :normal zv<cr>

" nmap <Tab> :tabnext<cr>
" Easy tab navigation
"nnoremap <C-Left> :tabprevious<cr>
"nnoremap <C-Right> :tabnext<cr>


" format code
"nnoremap <leader>F :FormatCode<CR>
" }}}

" Plugin config {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin config
"""""""""""""""""""""""""""""""""""""""""""""""""""
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
" dragvisuals
let g:DVB_TrimWS = 1
vmap <expr> <S-Left> DVB_Drag('left')
vmap <expr> <S-Right> DVB_Drag('right')
vmap <expr> <S-Down> DVB_Drag('down')
vmap <expr> <S-Up> DVB_Drag('up')
vmap <expr> <leader>D DVB_Duplocate()

" vmath
vmap <expr> ++ VMATH_YankAndAnalyse()
nmap ++ vip++
" toggle nerdTree
map <leader>< :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIgnore = ['^node_modules$']


let g:airline_theme='ravenpower'
" phpactor
let g:phpactorPhpBin = "/usr/bin/php"
" nerdcommenter
vmap -- <plug>NERDCommenterToggle
nmap -- <plug>NERDCommenterToggle

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
\    "mode": "passive",
\    "active_filetypes": [],
\    "passive_filetypes": []
\}
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
nnoremap <leader>z :History:<cr>
nnoremap <leader>x :GFiles?<cr>

nnoremap <leader>a :Rgi<space>
nnoremap <leader>A :Rg<space>
nnoremap <leader>q :exec "Rgi ".expand("<cword>")<cr>
nnoremap <leader>Q :exec "Rg ".expand("<cword>")<cr>

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

" vim:foldmethod=marker:foldlevel=0:foldenable
