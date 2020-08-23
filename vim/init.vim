call plug#begin()
Plug 'preservim/nerdtree'
Plug 'dylanaraps/wal.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'dracula/vim'
Plug 'sbdchd/neoformat'
call plug#end()

colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
