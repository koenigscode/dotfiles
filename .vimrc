set nocompatible              " required
filetype off                  " required
set nowrap
set encoding=utf-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" typescript/vim not working with vundle, install manually instead
" Plugin 'leafgarland/typescript-vim' 
Plugin 'peitalin/vim-jsx-typescript'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
syntax on

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

map <C-n> :NERDTreeToggle<CR>
