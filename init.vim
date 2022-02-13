" CP Vim configuration for CP

call plug#begin('C:\Users\LENOVO\AppData\Local\nvim\plugged')

" Everforest theme from Sainnhe
Plug 'sainnhe/everforest'
" Power Line
Plug 'vim-airline/vim-airline'
" NerdTree: explore sidebar for new folders and files in project
Plug 'scrooloose/nerdtree'
" Syntax highlighting
Plug 'sheerun/vim-polyglot'
" Inserting/deleting brackets in pairs
Plug 'jiangmiao/auto-pairs'
" C++ Debugging
Plug 'puremourning/vimspector'
call plug#end()

" Vimspector
" Try to load vimspector first to avoid E919
if has('python') || has('python3')
	silent! packadd vimspector
endif

" Enable Power Line fonts
let g:airline_powerline_fonts = 1
let g:airline_theme = 'everforest'

" Tab line from vim-airline
let g:airline#extensions#tabline#enabled = 1
" Tab name display mode
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Everforest theme settings
if has('termguicolors')
	set termguicolors
endif

set background=dark

let g:everforest_background='soft'
colorscheme everforest

" Vim settings
set noshowmode			" Hide status
set number			" Show line number
set cursorline			" Highlight current line
set smartindent			" Makes indenting smart
set expandtab			" Converts tabs to spaces
set linebreak			" Word wrap

"*---------------------------------------------------KEYMAPS-----------------------------------------------------------*
" Map <leader> to <SPACE>
let mapleader = ' '
" NerdTree
nnoremap <silent><leader>f :NERDTreeFind<CR>
nnoremap <silent><leader>t :NERDTreeToggle<CR>
" Switch tab using TAB
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
" Switch between multiple files
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Copy and paste between Windows and Vim (coming soon)
" Navigate faster
nnoremap J 10j
nnoremap K 10k
" g++
nnoremap <r> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r <bar> a.exe <CR>
" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dx :VimspectorReset<CR>
nnoremap <leader>de :VimspectorEval
nnoremap <leader>dw :VimspectorWatch
nnoremap <leader>do :VimspectorShowOutput
