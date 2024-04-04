set breakindent
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set nonumber
set wrap
set linebreak
syntax enable

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme default

command F Files
map <C-f> :put =strftime('# %a %Y-%m-%d %H:%M:%S')<CR>
autocmd BufRead,BufNewFile *.txt set filetype=markdown
nnoremap j gj
nnoremap k gk

" Persistent undo
set undodir=~/.vim/undodir
set undofile

" Mousewheel scroll
set mouse=nicr
