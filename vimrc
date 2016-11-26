" Vundle setup
set nocompatible   " be iMproved, required

" This is strange, but both of these lines are required.
" See https://github.com/VundleVim/Vundle.vim/issues/176
filetype on        " required
filetype off       " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'

Plugin 'dcharbon/vim-flatbuffers'

Bundle 'uarun/vim-protobuf'

call vundle#end()            " required
filetype plugin indent on    " required

" Normal Vim setup as usual
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set mouse=a

" These are on by default on most Linux setups, but we need them to
" make OS X's vim behave reasonably
set ruler
set backspace=indent,eol,start

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

set nu

color xoria_rigs
syntax on

set hlsearch
map <silent> <C-n> <Esc>:nohl<CR>
imap jj <Esc>

" No more accidental ex-mode when trying to exit
map q: <Nop>
nnoremap Q <nop>

" Highlight lines over 100 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

" Highlight trailing whitespace
highlight TrailingWhitespace ctermbg=red ctermfg=white guibg=#592929
match TrailingWhitespace /\S\@<=\s\+$/

" Make Powerline visible
set laststatus=2

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

