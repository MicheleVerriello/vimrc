" === Cursor shape ===
let &t_SI = "\<Esc>[6 q"   " Insert mode: steady bar
let &t_EI = "\<Esc>[2 q"   " Normal mode: steady block

" === Plugins ===
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'          " File explorer
Plug 'vim-airline/vim-airline'     " Status bar
Plug 'vim-airline/vim-airline-themes'

" === Airline config ===
let g:airline#extensions#whitespace#enabled = 0   " Hide trailing
let g:airline_section_z = ''                       " Hide percentage/line info
let g:airline_powerline_fonts = 1                  " Fancy separators
let g:airline_theme = 'catppuccin_mocha'
Plug 'morhetz/gruvbox'             " Color scheme
Plug 'catppuccin/vim', { 'as': 'catppuccin' }  " Modern theme
Plug 'ryanoasis/vim-devicons'      " File icons
call plug#end()

" === UI ===
set number                  " Line numbers
set cursorline              " Highlight current line
set showcmd                 " Show command in bottom bar
set showmatch               " Highlight matching brackets
set wildmenu                " Visual autocomplete for command menu
set laststatus=2            " Always show status line
set scrolloff=8             " Keep 8 lines above/below cursor
set signcolumn=yes          " Always show sign column
set termguicolors           " True colors
colorscheme catppuccin_mocha
set background=dark

" === Search ===
set incsearch               " Search as you type
set hlsearch                " Highlight matches
set ignorecase              " Case insensitive search
set smartcase               " Unless uppercase used

" === Indentation ===
set tabstop=4               " Tab = 4 spaces
set shiftwidth=4            " Indent = 4 spaces
set expandtab               " Use spaces instead of tabs
set autoindent              " Auto indent new lines
set smartindent

" === Navigation ===
set mouse=a                 " Enable mouse
vnoremap <BS> d             " Delete selection with backspace
nnoremap <C-d> <C-d>zz      " Center after half-page down
nnoremap <C-u> <C-u>zz      " Center after half-page up
nnoremap n nzzzv            " Center after search next
nnoremap N Nzzzv            " Center after search prev

" === Splits ===
set splitbelow              " Open splits below
set splitright              " Open splits to the right
nnoremap <C-h> <C-w>h       " Move left
nnoremap <C-j> <C-w>j       " Move down
nnoremap <C-k> <C-w>k       " Move up
nnoremap <C-l> <C-w>l       " Move right

" === NERDTree ===
nnoremap <C-b> :NERDTreeToggle<CR>

" === CoC ===
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
