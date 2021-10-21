syntax on
set number 
set mouse=a
set nohls
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf8
set showmatch
set cursorline
set sw=4
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
set noshowmode
set updatetime=100
set splitbelow
"set termguicolors

"Mapping to reload config
nmap <leader>w :w <CR>
nmap <leader>q :q <CR>
nmap <leader>t :q! <CR>
nmap <leader>r :saveas 

"scrolling
nnoremap <C-j> 5<C-e>
nnoremap <C-k> 5<C-y>
vmap <C-j> 5j
vmap <C-k> 5k
nnoremap J 5j
nnoremap K 5k
nnoremap L 5l
nnoremap H 5h

call plug#begin('~/.config/nvim/plugged')
" Temas
Plug 'morhetz/gruvbox'
"IDE
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

"coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
"Gruvbox
colorscheme gruvbox 
let g:gruvbox_contrast_dark = "hard"
let g:airline_theme='gruvbox'

"NerdTree
nmap <Leader>nt :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
"let g:NERDTreeMinimalUI=1

"Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp!<CR>
nmap <leader>2 :bn!<CR>
nmap <C-q> :bd!<CR>

"EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)

"Nerdcommenter
vmap <C-c> <Plug>NERDCommenterToggle<CR>gv

"atajos
imap jk <ESC>
vmap <leader>jk <ESC>

"Moverse insert mode
inoremap <C-f> <right>
inoremap <C-b> <left>
inoremap <C-n> <down>
inoremap <C-p> <up>

"borrado
inoremap Ñ <del>
nmap <backspace> <left><delete>

"terminal
nmap <C-t> :10sp term://zsh<CR>a
"nmap <C-t> :vertical terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <F1> <C-\><C-n><C-w>w
tnoremap <F2> <C-\><C-n><C-w>q
nmap <silent> <F1> <C-w>wa

"Bash
autocmd filetype sh inoremap #! #!/bin/bash


"copiado/pegado
vmap <leader>xyy "+y
vmap <leader>xpp "+p
nmap <leader>xpp "+p

set clipboard+=unnamedplus
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }
