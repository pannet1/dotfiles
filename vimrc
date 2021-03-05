set relativenumber
set nu
set hidden              "keep buffers often"
set noerrorbells
set nohlsearch          " highlight selections
set tabstop=4 softtabstop=4 " Set the default tabstop
set shiftwidth=4        " Set the default shift width for indents
set path+=**            "enables built in fuzzy search
set wildmenu
set nowrap               "lines dont wrap "
set backspace=indent,eol,start " more powerful backspacing
set expandtab           " Make tabs into spaces (set by tabstop)
set smarttab            " Smarter tab levels
set smartindent
let &titlestring = @%   " file name
set title               " make the vim tab be the filename
" better history
set noswapfile
set nowrap
set nobackup
set noshowmode
set undodir=~/dotfiles/vim/undodir
set undofile
"
set incsearch
"set termguicolors
set scrolloff=8
set dir=~/conf/vim      " move swap files away from project
set colorcolumn=80
set signcolumn=yes

set omnifunc=javascriptcomplete#CompleteJS
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=phpcomplete#CompletePHP
call plug#begin('~/conf/vim/plugged')
" " Git integration :Git
Plug 'tpope/vim-fugitive'
" " Window chooser with -
Plug 't9md/vim-choosewin'
" line numbers
Plug 'myusuf3/numbers.vim'
"theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'crusoexia/vim-monokai'
" " Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" Nice icons in the file explorer and file type status line.
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" close brackets
Plug 'Townk/vim-autoclose'
" " Highlight matching html tags
Plug 'valloric/MatchTagAlways'
"XML/HTML tags navigation (neovim has its own)
"use % to highlight the ending tag
Plug 'vim-scripts/matchit.zip'
" cs'" to change sorround from ' to "
Plug 'tpope/vim-surround'
" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
"search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/context_filetype.vim'
" " Generate html in a simple way
" use <C-y>, after the abbr html:5 for example
Plug 'mattn/emmet-vim'
" tag map 
" " Yank history navigation
" :h yankring.txt
" :h yankring-tutorial
Plug 'vim-scripts/YankRing.vim'
"Consoles as buffers (neovim has its own consoles as buffers)
Plug 'rosenfeld/conque-term'
"Show hotkeys
Plug 'liuchengxu/vim-which-key'

Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'dbeniamine/cheat.sh-vim'
call plug#end()

let mapleader=" "
set timeoutlen=2000


syntax enable
filetype plugin indent on
colorscheme monokai
set t_Co=256
"let g:airline_theme='simple'
" use - to select vim window
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1
" better line numbers numbres.vim
nnoremap <F3> :NumbersToggle<CR>
" complete with words from any opened file
let g:context_filetype#same_filetypes = {}
let g:context_filetype#same_filetypes._ = '_'


nnoremap <C-f> :GFiles<CR>
"fuzzy search
nnoremap <C-f> :FZF<cr>
"vim tab
nnoremap <C-t> :tabe<cr>

"emmet 
let g:user_emmet_leader_key=','

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"php
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ctags
command! MakeTags !ctags -R .
 " use ctrl+] to search for a tag
"  ctrl+o returns back to the file you are editing
"  g^] for ambiguous tags
"  ^t to jump back up the tag stack
"
"  set mark with mH for home
"  return to marker with ~H
"
" ctrl + o and i to jump back and forth between files
" ctrl p and  ^ is hub and spokes
" ctrl w splits, v vert split s horiz split
" H to switch from horizontal to vert
" resize 100 vert resize"  = makes it equal
"
