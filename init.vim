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

" Default C++ code
autocmd FileType cpp call IoStream()
fu! IoStream()
	if line("$") == 1
		call append(0, "#include <bits/stdc++.h>")
		call append(1, "using namespace std;")
		call append(2, "")
		call append(3, "#define fastio ios_base::sync_with_stdio(0); cin.tie(0); cout.tie(0);")
		call append(4, "#define ln \"\\n\"")
		call append(5, "#define sp \" \"")
		call append(6, "#define fpp(a, b, c) for (int a = b; a <= c; a++)")
		call append(7, "#define fmm(a, b, c) for (int a = b; a >= c; a--)")
		call append(8, "#define printarr(arr, st, en) fpp(i, st, en) cout << arr[i] << sp; cout << ln;")
		call append(9, "")
    call append(10, "#define vt vector")
		call append(11, "#define pb push_back")
		call append(12, "#define sz(A) A.size()")
		call append(13, "")
    call append(14, "#define ll long long")
		call append(15, "#define ull unsigned long long")
		call append(16, "")
    call append(17, "const int mod = 1e9 + 7;")
		call append(18, "const int mxn = 1e5 + 1;")
		call append(19, "")
    call append(20, "int t;")
		call append(21, "")
    call append(22, "void solve(){")
		call append(23, "")
    call append(24, "}")
		call append(25, "")
    call append(26, "void input(){")
		call append(27, "   cin >> t;")
		call append(28, "   while (t--){")
		call append(29, "			solve();")
		call append(30, "		}")
		call append(31, "}")
		call append(32, "")
    call append(33, "int main(){")
		call append(34, "		fastio;")
		call append(35, "		input();")
		call append(36, "}")
  endif
endfu

" -------------------------------------------------------------------------------------------KEYMAP-----------------------------------------------------------------------------------------------------------
" Map <leader> to <SPACE>
let mapleader = ' '
" NerdTree
nnoremap <silent><leader>f :NERDTreeFind<CR>
nnoremap <silent><leader>t :NERDTreeToggle<CR>
" Switch tab using TAB
nnoremap <silent><TAB> :bnext<CR>
nnoremap <silent><S-TAB> :bprevious<CR>
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
nnoremap <silent><S-z> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r<CR>
nnoremap <silent><S-x> :!%:r.exe<CR>
" Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dx :VimspectorReset<CR>
nnoremap <leader>de :VimspectorEval
nnoremap <leader>dw :VimspectorWatch
nnoremap <leader>do :VimspectorShowOutput
