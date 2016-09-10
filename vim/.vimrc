execute pathogen#infect('~/.vim/bundle/{}')

colorscheme slate
syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set number
set nowrap
set hlsearch
set colorcolumn=79

filetype plugin indent on

noremap ; :
noremap : ;

map <C-K> :pyf $HOME/scripts/clang-format.py<cr>
imap <C-K> <c-o>:pyf $HOME/scripts/clang-format.py<cr>
