syntax on
"Set search highlight
"set hlsearch
"Set tab indent
set shiftwidth=1
set tabstop=1
"Shortcuts
"map <S-Right> :tabn<CR>
"map <S-Left>  :tabp<CR>
map <S-l> :tabn<CR>
map <S-h>  :tabp<CR>
map <F2> :NERDTreeToggle<CR>
"map <C-S-w>   <Esc>:tabclose<CR>
" NERDTress File highlighting

"turn on line number
set number

"Enable mouse
set mouse=a

"Turn on pathogen"
execute pathogen#infect()

"Add CtrlP - fast file finder 
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Set ignore files"
set wildignore+=*target/*,*node_modules/*  
"test comment"


"VUNDLE"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
"YouCompleteMe"
Plugin 'Valloric/YouCompleteMe'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"Syntax checking"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

"Set smart indent"
:filetype indent on
