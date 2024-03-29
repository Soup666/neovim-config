" Plugins will be downloaded under the specified directory.
" ~/.local/share/nvim/plugged
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'junegunn/seoul256.vim'
Plug 'ryanoasis/vim-devicons' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'stevearc/dressing.nvim' " optional for vim.ui.select
Plug 'akinsho/flutter-tools.nvim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sbdchd/neoformat'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" General settings
set number
set relativenumber
set tabstop=4
set mouse=nvi
set encoding=UTF-8

" Set theme
let g:seoul256_background = 235
colo seoul256
let g:airline_theme='night_owl'

let mapleader = ','

" open NERDTree atomatically
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }
let g:NERDTreeIconGlyphPadding = ' '

let g:coc_global_extensions = [
      \ 'coc-flutter',
      \ 'coc-dart',
      \ ]

"Move between buffers
nnoremap <C-J> :bprev<CR>
nnoremap <C-K> :bnext<CR>
nnoremap <C-S> :w<CR>
nnoremap <C-W> :wq<CR>
nnoremap <F2> :NERDTreeToggle<CR>
vnoremap <C-c> "+y
nnoremap <leader>r :FlutterRun<CR>
nnoremap <leader>h :FlutterReload<CR>
nnoremap <leader>H :FlutterRestart<CR>
nnoremap <leader>d :FlutterDevices<CR>
nnoremap <leader>D :FlutterDetach<CR>
nnoremap <leader>A :FlutterAttach<CR>
nnoremap <leader>Q :FlutterQuit<CR>
nnoremap <leader>F :Neoformat<CR>


lua << EOF
  require("flutter-tools").setup {} -- use defaults
EOF

