"https://vim.fisadev.com/ for python editor
set relativenumber
set path+=**            "enables built in fuzzy search
set backspace=indent,eol,start " more powerful backspacing
set tabstop=2           " Set the default tabstop
set softtabstop=2
set shiftwidth=2        " Set the default shift width for indents
set expandtab           " Make tabs into spaces (set by tabstop)
set smarttab            " Smarter tab levels
let &titlestring = @%   " file name
set title               " make the vim tab be the filename
set swapfile
set dir=~/conf/vim      " move swap files away from project
set hlsearch            " highlight selections
set number              " show line num

call plug#begin('~/conf/vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'crusoexia/vim-monokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'deoplete-plugins/deoplete-jedi'
" Python autocompletion
Plug 'deoplete-plugins/deoplete-jedi'
" Completion from other opened files
Plug 'Shougo/context_filetype.vim'
" Just to add the python go-to-definition and similar features,
" autocompletion  from this plugin is disabled
Plug 'davidhalter/jedi-vim'
" Automatically close parenthesis, etc
Plug 'Townk/vim-autoclose'
" Surround
Plug 'tpope/vim-surround'
" Indent text object
Plug 'michaeljsmith/vim-indent-object'
" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'
" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
" " Window chooser
Plug 't9md/vim-choosewin'
" " Automatically sort python imports
Plug 'fisadev/vim-isort'
" " Highlight matching html tags
Plug 'valloric/MatchTagAlways'
" " Generate html in a simple way
Plug 'mattn/emmet-vim'
" " Git integration
Plug 'tpope/vim-fugitive'
" " Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" " Yank history navigation
Plug 'vim-scripts/YankRing.vim'
Plug 'myusuf3/numbers.vim'
" Nice icons in the file explorer and file type status line.
Plug 'ryanoasis/vim-devicons'
"Consoles as buffers (neovim has its own consoles as buffers)
Plug 'rosenfeld/conque-term'
"XML/HTML tags navigation (neovim has its own)
Plug 'vim-scripts/matchit.zip'
call plug#end()

nnoremap <C-f> :FZF<cr>
nnoremap <C-t> :tabe<cr>

syntax on
filetype plugin indent on
colorscheme monokai
set t_Co=256

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" Deoplete -----------------------------
"
" Use deoplete.
 let g:deoplete#enable_at_startup = 1
 let g:deoplete#enable_ignore_case = 1
 let g:deoplete#enable_smart_case = 1
" complete with words from any opened file
let g:context_filetype#same_filetypes = {}
 let g:context_filetype#same_filetypes._ = '_'
"
" Jedi-vim ------------------------------
"
" Disable autocompletion (using deoplete instead)
 let g:jedi#completions_enabled = 0
"
" All these mappings work only for python code:
" Go to definition
let g:jedi#goto_command = ',d'
" Find ocurrences
let g:jedi#usages_command = ',o'
" Find assignments
let g:jedi#goto_assignments_command = ',a'
" Go to definition in new tab
nmap ,D :tab split<CR>:call jedi#goto()<CR>
" Window Chooser ------------------------------
" mapping
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

