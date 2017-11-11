call plug#begin()

"sensible options for vim
Plug 'tpope/vim-sensible'
"ctrlp : full path fuzzy file, buffer, mru, tag, ... finder for vim
"launch with <c-p>
"<f5> to refresh file cache
"<c-r> to switch to regexp mode
"<c-t> to open result in a new tab (or <c-v> or <c-x> to open in slipt)
"<c-y> to create new file and parent directories
"<c-z> to mark/unmark files and <c-o> to open them
Plug 'ctrlpvim/ctrlp.vim'
source ~/.vim/config/ctrlp_config.vim
"end ctrlp

"nerdtree : visual tree explorer
"<c-d> to switch between nerdtree and window
Plug 'scrooloose/nerdtree'
source ~/.vim/config/nerdtree_config.vim
"end nerdtree

"nerdtree-git : show git status flags in nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
"end nerdtree-git

"airline : lean and mean status/tabline
Plug 'vim-airline/vim-airline'
source ~/.vim/config/vim-airline_config.vim
"end airline

"vim-fugitive : git wrapper for vim
Plug 'tpope/vim-fugitive'
source ~/.vim/config/vim-fugitive_config.vim
"end vim-fugitive

"syntastic : syntax checking plugin
Plug 'scrooloose/syntastic'
source ~/.vim/config/syntastic_config.vim
"end syntastic

"surround : delete, change and add surroundings (", ', etc) in pairs
"Plug 'tpope/vim-surround'
"end surround

"NERD Commenter : comment helper functions
Plug 'scrooloose/nerdcommenter'
source ~/.vim/config/nerdcommenter_config.vim
"end NERD Commenter

"vim-easytags : automated tag generation and syntax highlighting
Plug 'xolox/vim-easytags'
source ~/.vim/config/vim-easytags_config.vim
"end vim-easytags

"numbers : switch between absolute and relative numbers displayed
Plug 'myusuf3/numbers.vim'
source ~/.vim/config/numbers_config.vim
"end numbers

"undotree : history tree visualizer and manipulator
Plug 'mbbill/undotree'
"end undotree

"lexima : automatically close ", ', (, etc plus bonus
"Plug 'cohama/lexima.vim'
"end lexima

"vim-gitgutter : show a git diff in the sign columns
Plug 'airblade/vim-gitgutter'
"end vim-gitgutter

"vim-tintin : Tintin++ color syntax
Plug 'LokiChaos/vim-tintin'
"end vim-tintin

"vim-fish : fish comfiguration for vim
Plug 'dag/vim-fish'
"end vim-fish

"vim-dasm : dasm color syntax for vim
Plug 'pksunkara/vim-dasm'
"end vim-dasm

"tagbar : browse the tags of the current file and get an overview of its structure
"Plug 'majutsushi/tagbar'
"nmap <F8> :TagbarToggle<CR>
"end tagbar

"youcompleteme : autocomplete engine
"Plug 'Valloric/YouCompleteMe'
"end youcompleteme

"vim-indent-guides : display visual guides for indentation
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1 "start on vim
let g:indent_guides_auto_colors = 1 "disable auto color finder
let g:indent_guides_guide_size = 1 "size of the guide
"end vim-indent-guides

"vim-pasta : smart paste
Plug 'sickill/vim-pasta'
"end vim-pasta

"rust-lang : rust stuff
Plug 'rust-lang/rust.vim'
"end rust-lang

"color scheme
Plug 'tomasr/molokai'
let g:rehash256 = 1
colorscheme molokai

call plug#end()

filetype plugin indent on "required

syntax enable "enable syntax highlight

set number "print line number
set shiftwidth=4 "how many columns indentation with << and >>
set tabstop=4 "how many columns indentation with tab
set softtabstop=4 "how many columns vim uses when tab is used
set expandtab "replaces all tabs with corresponding number of spaces
set autoindent "automatically indent cursor when pressing enter
set smartindent "indent if need be
set showcmd "show the last command written
set cc=80 "show a line at 80 characters

"set encoding=utf-8 "encoding by default

set updatetime=250 "update time in ms

set backspace=indent,eol,start "have a working backspace

set wrap "soft wrap
set textwidth=0
set wrapmargin=0 "disable hard wrap
set linebreak
set nolist

set shell=zsh

let mapleader = ","

"remove the search highlight
"nnoremap <silent> <C-l> :nohl<CR><C-l>

"add ctrl+e to go to the end of the line in edit mode
inoremap <silent> <C-e> <C-O>$
inoremap <silent> <C-a> <C-O>0

"remmap buffer move commands
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"remap <c-f> to find buffers
noremap <c-f> :buffers<CR>:b

"remap <c-n> and <c-b> to next buffer and prev buffer
noremap <c-n> :bn<CR>
noremap <c-b> :bp<CR>

set hidden "can hide a modified buffer without having to save it first

"remap <c-u> to fund and remplace selection
noremap <c-u> y:%s/<c-r>"//g<left><left>
