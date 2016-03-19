syntax on
"Set search highlight
"set hlsearch
"Set tab indent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
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
"set ctrp max files"
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40


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
"Show git changed file"
Plugin 'airblade/vim-gitgutter'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

"git changed files
Plugin 'Xuyuanp/nerdtree-git-plugin'

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

"Set smart indent"
:filetype indent on

"au BufNewFile,BufRead *.handlebars set file type=html

"set color theme"
"color dracula

"set git differ time
set updatetime=250

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


