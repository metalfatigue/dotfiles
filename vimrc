set nocompatible
set visualbell
set number
set colorcolumn=92
set timeoutlen=1000 ttimeoutlen=0
filetype indent plugin on
syntax on

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>

execute pathogen#infect()
set laststatus=2
set t_Co=256

" airline
let g:airline#extensions#tabline#enabled = 1

" mappings
" global mappings
map! ;; <Esc>
map <Space> :w <CR>
map ,wt :silent !printf '\033k%\033\\'<cr> :redraw!<cr>

" write then reload file
map ,r  :w \| :e!<cr>

" for tabs
nnoremap tbn :tabnew<Space>
nnoremap tn :tabnext<CR>
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>

" for splits
map <C-l> <C-W>l
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k

" for filetypes
au BufNewFile,BufRead *.scss set filetype=scss
au BufNewFile,BufRead *.md set filetype=markdown
