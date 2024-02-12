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

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" General settings
set number
set relativenumber
set mouse=nvi
set encoding=UTF-8

" Set theme
let g:seoul256_background = 235
colo seoul256
let g:airline_theme='night_owl'

" open NERDTree automatically
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


"Move between buffers
nnoremap <C-J> :bprev<CR>
nnoremap <C-K> :bnext<CR>
nnoremap <C-S> :w<CR>
nnoremap <C-W> :wq<CR>
nnoremap <F2> :NERDTreeToggle<CR>
vnoremap <C-c> "+y
