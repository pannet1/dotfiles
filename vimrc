set exrc                " enables to use vimrc in the project directory"
set relativenumber
set path+=**            "enables built in fuzzy search
set hidden
set nowrap
set backspace=indent,eol,start " more powerful backspacing
set tabstop=2           " Set the default tabstop
set softtabstop=2
set shiftwidth=2        " Set the default shift width for indents
set expandtab           " Make tabs into spaces (set by tabstop)
set smarttab            " Smarter tab levels
set smartindent
let &titlestring = @%   " file name
set title               " make the vim tab be the filename
set noswapfile
set nowrap
set nobackup
set undodir=~/dotfiles/vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set dir=~/conf/vim      " move swap files away from project
set nohlsearch            " highlight selections
set number              " show line num

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
" Surround
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

call plug#end()

let mapleader=" "
set timeoutlen=2000

nnoremap <C-f> :GFiles<CR>

"nnoremap <leader>ps :lua require('telescope.')

syntax on
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

"https://vim.fisadev.com/ for python editor

