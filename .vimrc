" Default to tree view in netrw
let g:netrw_liststyle=3

" Vundle requirement
filetype off

" Use `//` to search for visual mode highlighted text!
vnoremap // y/<C-R>"<CR>

" Auto strip trailing whitepsace from given filetypes!
autocmd BufWritePre *.js %s/\s\+$//e
autocmd BufWritePre *.sol %s/\s\+$//e

" Set a column width indicator
:set colorcolumn=80

" Highlight line the cursor is one
set cursorline

" Buffer will scroll withing 5 lines of top || bottom of screen
set scrolloff=5

" Have searches end up in centre of screen
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz

" Set relative line numbers on
set number relativenumber

" Map jk to escape & save if buffer has changed!
inoremap jk <Esc>:update<CR>

" Disable arrow keys in Normal & Insert modes
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Map enter to G so we can go to lines quickly
:nnoremap <CR> G

" Set highlight searching on 
:set hlsearch

" Cycle through open buffers with tab
:nnoremap <Tab> :bNext<CR>

" Allow for leaving a buffer without writings its contents
:set hidden
:nnoremap <CTRL-c> :bp\|bd #<CR>

" Set JS file to have 2 spaces as a tab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" set path so we can fuzzy find with :find something.rs (can use * for globbing and tab autocompletion)
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

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Multi-language syntax highlighting
Plugin 'sheerun/vim-polyglot'
"Dracula theme
Plugin 'dracula/vim', { 'as': 'dracula' }
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Add syntax-highlighting for github markdown
Bundle 'gabrielelana/vim-markdown' 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Add dracula theme!
syntax on
color dracula
