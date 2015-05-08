"call pathogen#runtime_append_all_bundles()
execute pathogen#infect()
call pathogen#helptags()

let g:syntastic_python_checkers = ['pylint', 'pyflakes', 'pep8', 'python']

syntax on
set nu 
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set incsearch
set hlsearch
"set cc=80 " character color after 80 chars
set wildmenu
set wildmode=longest:list,list

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

filetype indent plugin on
set nrformats=

vnoremap <C-c> "*y

" switch tabs
map <c-j> gT
map <c-k> gt
map <c-h> gT
map <c-l> gt

" quick edit mode escape
imap jj <Esc>


" Use the below highlight group when displaying bad whitespace is desired
highlight BadWhitespace ctermbg=red guibg=red

set shortmess+=A

" Lazy move lines. Use ctrl + j/k to move your line up or down
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

set runtimepath^=~/.vim/bundle/ctrlp.vim
