set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim

call plug#begin()
Plug 'jwkvam/jupyterlab-vim'
Plug 'jdsimcoe/abstract.vim'
Plug 'dracula/vim', { 'as': 'dracula'  }
call plug#end()

colorscheme dracula
