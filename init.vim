set relativenumber
set rnu
set scrolloff=7
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=av                 " middle-click paste with and mouse click 
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store back

inoremap jk <esc>
nnoremap <space><space> :noh<CR>
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-l> <C-w>l<CR>
nnoremap <C-k> <C-w>k<CR>
nnoremap <C-h> <C-w>h<CR>
nnoremap <C-j> <C-w>j<CR>

call plug#begin('~/.vim/plugged')
 Plug 'dracula/vim'
 Plug 'projekt0n/github-nvim-theme'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

 " golang linitng
 let g:deoplete#enable_at_startup = 1
 let g:closetag_filetypes = 'html,xhtml,phtml,vue'
call plug#end()

call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

" color scheme
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
" VimScript
" colorscheme github_light
colorscheme github_dark
" colorscheme dracula
" open new split panes to right and below
set splitright
set splitbelow

autocmd Filetype vue setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

