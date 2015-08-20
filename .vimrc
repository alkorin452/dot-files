syntax on
filetype off

""""""""""""""""""""""""""""""""""" COLOR SCHEME

"colorscheme"
set background=dark

let g:solarized_termcolors=256
colorscheme solarized

"let g:seoul256_background=236"
"colorscheme seoul256"

"""""""""""""""""""""""""""""""""""" PLUGINS

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"delimitMate autocomplete brackets"
Plugin 'Raimondi/delimitMate'

" NERDTree plugin
Plugin 'scrooloose/nerdtree'

" Syntastic syntax checker
Plugin 'scrooloose/syntastic'

"Solarized colorscheme"
Plugin 'altercation/vim-colors-solarized'

"IndentLine"
Bundle 'Yggdroot/indentLine'

"NerdCommenter so I don't have to do shit"
Plugin 'scrooloose/nerdcommenter'

"Seoul Colorscheme"
Bundle 'junegunn/seoul256.vim'

"Bc zen"
Plugin 'junegunn/goyo.vim'


call vundle#end()

"""""""""""""""""""""""""""""""""" PLUGIN SETTINGS

"Syntastic Settings
let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_quiet_messages = {"type": "style"}
let g:indentLine_enabled = 1
:setfiletype python

"NerdTree opens on start and closes on exit
autocmd VimEnter * NERDTree

:command NE NERDTree

""""""""""""""""""""""""""""""" KEYBINDINGS/LAZINESS
"bc laziness
let mapleader = ','

"Maps ; to :"
nnoremap ; :
nnoremap : ;

"Easier split navigation"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"I wanna go fast
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

"put new line under current w/o entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

""""""""""""""""""""""""""""""" FORMATTING

"Numbers are chill
set nu

"Displays filename at the top of the window"
set title

"Use mouse in all modes"
set mouse=a

"No idea
set nostartofline

"So I can see my commands, barely"
set showcmd

" Sets the ident to 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"Sickest shit in this entire file
"Resizing splits when terminal window is resized
autocmd VimResized * :wincmd = 

"bc vim can't figure out splits
set splitbelow
set splitright

"""""""""""""""""""""""""""""""" MISC SETTINGS

"Copy/Paste into the OS clipboard"
set clipboard=unnamed

"Turns off the fucking beeping noise"
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set vb t_vb=


