" Plugins
call plug#begin()
Plug 'preservim/nerdtree'          " File explorer
call plug#end()

" Status Line
set laststatus=2
set statusline=%f\ %m%r%h%w%=%y\ [%l:%c]\ %p%%
hi StatusLine ctermbg=NONE guifg=#eeeeee guibg=NONE
hi StatusLineNC ctermbg=NONE guifg=#777777 guibg=NONE

" Cursor style
set guicursor=n:block,i:ver25
let &t_SI = "\e[6 q" " Insert mode = bar
let &t_EI = "\e[2 q" " Normal mode = block

" UI
set number                  " Line numbers
set showcmd                 " Show command in bottom bar
set showmatch               " Highlight matching brackets

" Search
set incsearch               " Search as you type
set hlsearch                " Highlight matches
set ignorecase              " Case insensitive search

" Indentation
set tabstop=4               " Tab = 4 spaces
set shiftwidth=4            " Indent = 4 spaces
set expandtab               " Use spaces instead of tabs
set autoindent              " Auto indent new lines
set smartindent

" Navigation 
set mouse=a                 " Enable mouse
vnoremap <BS> d             " Delete selection with backspace

" Splits
set splitbelow              " Open splits below
set splitright              " Open splits to the right
nnoremap <C-h> <C-w>h       " Move left
nnoremap <C-j> <C-w>j       " Move down
nnoremap <C-k> <C-w>k       " Move up
nnoremap <C-l> <C-w>l       " Move right

" NERDTree 
nnoremap <C-b> :NERDTreeToggle<CR>

" CoC 
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"

" Option + Left/Right arrow for word Navigation
inoremap <Esc>b <C-o>b
inoremap <Esc>f <C-o>w
