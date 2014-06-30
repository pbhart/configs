" .vimrc
" Phil Hart
" Sun Jun 29 19:58:58 CDT 2014

filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""
" Forget being compatible with good ol' vi
set nocompatible

" Turn on that syntax highlighting
syntax on

" Why is this not a default
set hidden

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Better Settings Wyatt goes here
"
" Set the forward slash to be the slash of note.  Backslashes suck
" This is really only applicable to Windows but I like to have a vimrc
" that works no matter what OS I'm currently on
set shellslash

" Make command line two lines high
set ch=2

" set visual bell -- I hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2

set timeoutlen=1000

" Keep some stuff in the history
set history=100

""""""""""""""""""""""""""""""""""
" phil's stuff goes here

colorscheme blue

set cursorcolumn

set cursorline

" Maps jj to act as <esc> put in .vimrc	
ino jk <esc>
cno jk <c-c>

" Automatically save Foldings
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

" remaps yank and put to use general clipboard
" noremap p "+P
" noremap y "+y

set clipboard=unnamed

set pdev=sam

""""##################################
" learn vim scripting the hard way
"
" echom "(<^.^>)"


set number 
set relativenumber

nnoremap - ddp      " Move line down
nnoremap _ dd2kp    " Move line up

" 4.3
inoremap <c-u> <esc>viwUi     " Cap a word in insert
nnoremap <c-u> viwU<esc>      " Cap a word in normal

" 6.2

let mapleader = ","
let maplocalleader = "\\" 

" 7.1 7.2
"
" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nnoremap <leader>ev :split $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nnoremap <leader>sv :source $MYVIMRC<cr>

" 8.4
iabbrev withe with
iabbrev pbh  Phil Hart
iabbrev @ pbhart@gamil.com


" 9.2
"
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" I don't want to us these rather us 0, ^, $ instead
" nnoremap <leader>H 0
" nnoremap <leader>L $

" Fix?
vnoremap <leader>B "`<,`>"


