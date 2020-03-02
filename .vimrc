"filetype off before vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
call vundle#end()

"256 color support
set t_Co=256

filetype plugin indent on

"case insensitive search unless 
"a capital is used on search
set ignorecase
set smartcase

"System clipboard yank and pate
nnoremap <C-y> "*y
vnoremap <C-y> "*y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

"map ctrl p to open file finder
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f'

"Autoclose scratch suggestions by YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"Trigger autocomplete after 1 char is typed
let g:ycm_autotrigger = 1

set number relativenumber
imap jk <Esc>
color dracula
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Automatically save and reload folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"Use system clipboard
set clipboard=unnamedplus

"always show status line
set laststatus=2

"Switch leader key to space
let mapleader = " "

"Align comments to left
let g:NERDDefaultAlign = 'left'

" quit editing and sourcing of vim
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"clear buffer abbreviations
abclear <buffer>

"autofill templates
" I don't actually use these but kept for syntax references
" augroup templates
"     autocmd!
"     autocmd BufNewFile *.html r /home/kalenpw/Documents/Templates/html
"     autocmd BufNewFile *.java r /home/kalenpw/Documents/Templates/java
" augroup END

"mispellings
iabbrev seperate separate
iabbrev teh the

" Don't auto comment new lines
set formatoptions-=cro
" this is a kludge to get this working
autocmd FileType * set formatoptions-=cro

" quicker typing of $
inoremap qq $

