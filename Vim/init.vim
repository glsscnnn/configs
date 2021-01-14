call plug#begin()

Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-projectionist'        

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'noahfrederick/vim-composer'     
Plug 'noahfrederick/vim-laravel'

Plug 'dracula/vim'
Plug 'dylanaraps/wal.vim'
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

nnoremap <silent> <C-l> :nohl<CR><C-l>
