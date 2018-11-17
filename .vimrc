filetype off

" Map ctrl-[ to escape insert mode AND save - the following four mappings are
" to fix the now broken arrow keys! :P
imap <C-[> <Esc>:update<CR>
imap <Esc>oA <Esc>ki
imap <Esc>oB <Esc>ji
imap <Esc>oC <Esc>li
imap <Esc>oD <Esc>hi

" Map enter to G so we can go to lines quickly
:nnoremap <CR> G

" Set highlight searching on 
:set hlsearch

" Cycle through open buffers with tab and shift-tab
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Normally you can't leave a buffer without writing it's contents, now we can!
:set hidden
:nnoremap <CTRL-c> :bp\|bd #<CR>

" Set JS file to have 2 spaces as a tab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" set path so we can fuzzy find with :find something.rs (can use * for
" globbing and tab autocompletion)
set path+=**
set wildmenu

" set smart indent on
set smartindent

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab "

" Create a hide toggle for Nerdtree
nmap <h> :NERDTreeToggle<CR>

" Map l to open a node in nerdtree
let g:NERDTreeMapActivateNode = "l"

"Start nerdtree when vim loads
autocmd vimenter * NERDTree

"Start nerdtree with cursor in the editor, not nerdtree!
autocmd VimEnter * NERDTree | wincmd p

"Open NerdTree automatically if opening vim with no specified files.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc()==0 && !exists("s:std_in") | NERDTree | endif

"Close nerdtree if it's the only existing window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Lose the help thingy at the top
let NERDTreeMinimalUI = 1

"Show dot files in nerdtree
let NERDTreeShowHidden=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Auto commenter
Plugin 'scrooloose/nerdcommenter'
" Buffer management - over ctrl c to kill current buffer!
Plugin 'qpkorr/vim-bufkill'
"g:BufKillOverrideCtrlCaret
map <C-c> :BD<cr>
" Vim surround plugin
Plugin 'tpope/vim-surround'
" Go plugin
Plugin 'fatih/vim-go'
"Autocomment stuff
Plugin 'tomtom/tcomment_vim'
"Add git fugitive
Plugin 'tpope/vim-fugitive'
"Multi-language syntax highlighting
Plugin 'sheerun/vim-polyglot'
"Use git stuff with nerdtree
Plugin 'scrooloose/nerdtree'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Add auto-bracket-closing
Plugin 'Raimondi/delimitMate'
"let delimitMate_expand_cr=1
imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"
"Rainbow brackets!
Plugin 'luochen1990/rainbow'
"Add syntax-highlighting for github markdown
Bundle 'gabrielelana/vim-markdown' 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Add dracula theme!
syntax on
color dracula

"Have line numbers always on:
set number

"Set rainbow brackets on
let g:rainbow_active = 1
