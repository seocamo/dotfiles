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
" sidebar
Plug 'scrooloose/nerdtree'
" surround keys
Plug 'tpope/vim-surround'
" Comment stuff out. gcc gc
Plug 'tpope/vim-commentary'
" Replace text with the contents of a register. [count]["x]gr{motion} [count]["x]grr {Visual}["x]gr
Plug 'vim-scripts/ReplaceWithRegister'
" vim motion on Speed
Plug 'easymotion/vim-easymotion'
" search utils
Plug 'ctrlpvim/ctrlp.vim'
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

set shell=/usr/bin/zsh
set encoding=utf-8
set nobackup nowritebackup noswapfile
set history=50
set ruler
set showcmd
set laststatus=2
" git status bar
"set statusline=%{FugitiveStatisLine()}
set autoread
" change buffer without saving
set hidden
set clipboard=unnamedplus

set path=.,**
set tags=./tags;,tags;
" to index ctags -R. in folder

" Tigger autoread when changing buffers or coming back to vim in terminal
au FocusGained,BufEnter * :silent! !

highlight ColorColumn ctermbg=green
call matchadd('ColorColumn', '\%81v', 100)

set cursorline visualbell wildmenu nowrap
" enable autocompletion
set wildmode=longest,list,full
" disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
" set unicode char for tab/nbsp/trail space
exec "set listchars=tab:\uBB\uBB,nbsp:~,trail:\uB7"
set list

" run zrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Search
set ignorecase smartcase hlsearch incsearch showmatch

" softtabs, 4 spaces
set expandtab shiftwidth=4 tabstop=4
set shiftround

" automatic indenting
set ai si

" relative number
set number relativenumber numberwidth=5

" split default below and to the right
set splitbelow splitright

" Always use vertical diffs
set diffopt+=vertical

set scrolloff=8 sidescrolloff=15 sidescroll=1

" ignore search
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

" To get out of diff view you can use the :diffoff command.
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
augroup END
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

let g:solarized_termtrans = 1
let g:solarized_statusline = "flat"
colorscheme solarized8_flat

if or(or(has("gui_qt"), has("gui_gtk2")), has("gui_gtk3"))
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Regular\ 10
endif

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

"""""""""""""""""""""""""""""""""""""""""""""""""""
" mapping config
"""""""""""""""""""""""""""""""""""""""""""""""""""

" leader spacebar
let mapleader = " "
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

" Quicker window moverment
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

"map <A-j> <C-w>j
"map <A-k> <C-w>k
"map <A-h> <C-w>h
"map <A-l> <C-w>l

" Nav wrap lines
nnoremap j gj
nnoremap k gk

" Stop highlight after searching
nnoremap <silent> <leader>, : noh<cr>

" black hole deletes
nnoremap <leader>d "_d

" split v
map <leader>- :vsp<space>

" spell-check set to <leader>o, 'o' for 'orthography'
map <leader>o :setlocal spell! spelllang=en_us<cr>

" find file
"map <leader>f :find<space>

" replace all is aliased to S
nnoremap S :%s//g<left><left>


" map <TAB>: to goto start of text of line
nnoremap <tab> ^
" map d <TAB> to delete to start of line
nnoremap d<tab> d^
" map c <TAB> to change to start of line
nnoremap c<tab> c^
" map y <TAB> to copy to start of line
nnoremap y<tab> y^

" map ½ to go to the end of line
nnoremap ½ $
" map d ½ to delete to end of line
nnoremap d½ d$
" map c ½ to change to end of line
nnoremap c½ c$
" map y ½ to copy to end of line
nnoremap y½ y$

" map Ctrl + s to save in any mode
noremap <silent> <C-s> :update<cr>
vnoremap <silent> <C-s> <C-C>:update<cr>
inoremap <silent> <C-s> <C-O>:update<cr>
map <leader>s <C-S>

" map buffer
"map <leader>b :b<space>
map <leader>n :bn<cr>
map <leader>c :bd<cr>

" git
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>


" tags
nnoremap <A-Left> <C-T>
nnoremap <A-Right> <C-]>

" start apps
" lint file with php
map ,zq :!php72 -l %<cr>
" purge learnit caches
map ,za :!cd /home/peter/Workspace/Web/learnit/;php72 /home/peter/Workspace/Web/learnit/admin/cli/purge_caches.php<cr><cr>
" uglify AMD
map ,zs :!cd %:h/..; /home/peter/.config/yarn/global/node_modules/.bin/uglifyjs --verbose --warn -o ./build/%:t:r.min.%:e -- ./src/%:t <cr>
" code checker
map ,zd :!cd /home/peter/Workspace/Web/learnit/; php72 /home/peter/Workspace/Web/learnit/local/codechecker/run.php %<cr>
" code lint
map ,zf :!php72 -l %<cr>
" JS linting
map ,zc :!/home/peter/.config/yarn/global/node_modules/.bin/eslint %<cr>
" JS linting with fixing
map ,zx :!/home/peter/.config/yarn/global/node_modules/.bin/eslint % --fix<cr>

map ,zw :exec "!/usr/bin/firefox 'https://www.php.net/manual-lookup.php?pattern=".expand("<cword>")."&scope=quickref'"<cr><cr>

noremap <leader>t :sh<cr>
map <leader>u :window difft<cr>

" Split window
nmap ss :split<cr><C-w>w
nmap sv :vsplit<cr><C-w>w
" toggle window
nmap s<space> <C-w>w
" Resize window
nmap sh <C-w><
nmap sk <C-w>-
nmap sj <C-w>+
nmap sl <C-w>>
nmap <S-Tab> :tabprev<cr>

" jump block
nmap Æ {
nmap æ }

" jump block
nmap ø g;
nmap Ø g,



" nmap <Tab> :tabnext<cr>
" Easy tab navigation
"nnoremap <C-Left> :tabprevious<cr>
"nnoremap <C-Right> :tabnext<cr>


" format code
"nnoremap <leader>F :FormatCode<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin config
"""""""""""""""""""""""""""""""""""""""""""""""""""

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

" Ctrl-p config
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
nnoremap <leader>. :CtrlPTag<cr>
map <silent> <leader>jd :CtrlPTag<cr><c-\>w

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let g:airline_theme='ravenpower'
" phpactor
let g:phpactorPhpBin = "/usr/bin/php"

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" fzf

augroup fzf
  autocmd!
augroup END

" Key mapping

" History of file opened
nnoremap <leader>q :History<cr>

" Buffers opens
nnoremap <leader>w :Buffers<cr>

" Files recursively from pwd
nnoremap <leader>e :Files<cr>

" Ex commands
nnoremap <leader>r :Commands<cr>
" Ex command history. <C-e> to modify the command
nnoremap <leader>z :History:<cr>
nnoremap <leader>x :GFiles<cr>

nnoremap <leader>a :Rgi<space>
nnoremap <leader><C-a> :Rg<space>
nnoremap <leader>A :exec "Rg ".expand("<cword>")<cr>

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

