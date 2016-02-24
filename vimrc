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

" Highlight lines over 80 chars
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" Turn on powerline
set laststatus=2
set rtp+=/Users/wrigby/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

