" Configuration for NeoVim
call plug#begin()

" ctrl-p
Plug 'kien/ctrlp.vim'
" Install compilation dependecies first: https://github.com/ycm-core/YouCompleteMe
" This also takes some time to compile
" You also need to run "./install.py", located inside YCM folder
Plug 'Valloric/YouCompleteMe'
" For elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'neomake/neomake'
" For editor color
Plug 'phanviet/vim-monokai-pro'
Plug 'micha/vim-colors-solarized'
" Async format
Plug 'mhinz/vim-mix-format'
" HTML
Plug 'mattn/emmet-vim'

" List ends here, plugins available after this call
" You also need to run :PlugInstall
call plug#end()

" remap space bar to write file
nnoremap <space> :w<CR>

set number
set foldmethod=syntax
colorscheme monokai_pro
syntax on
filetype plugin indent on

set laststatus=2
set wildmenu

" Hide line numbers when using terminal
au TermOpen * setlocal nonumber norelativenumber

" Escape on terminal
tnoremap <Esc> <C-\><C-n>

" Ignore files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|deps\|_build'

" This is for neomake
" When writing a buffer (no delay).
call neomake#configure#automake('w')

let g:neomake_open_list = 2

" Formatting
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
autocmd FileType elixir     setlocal shiftwidth=2 tabstop=2

" JS Folding
"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened