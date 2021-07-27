" -------------------------------------
" Plugin manager
"   vim-plug settings
" -------------------------------------
" Locations
let s:plugins_dir = g:dotfiles_cache_dir . '/vim-cache/plugins'

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  execute '!sh ' . g:dotfiles_dir . '/etc/init/install-vim-plug.sh'
endif

" Run PlugInstall if there are missing plugins
augroup vimrc_vim_plug
  autocmd!
  autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
  \| endif
augroup END

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : s:plugins_dir)

" Declare the list of plugins.
" -------------------------------------

" For help about vim-plug
Plug 'junegunn/vim-plug'

" For offial help in Japanese
Plug 'vim-jp/vimdoc-ja'

" For colorscheme
Plug 'sainnhe/gruvbox-material'

" Fou language server protcol
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" For ascyncomplete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" For fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" For snippets
if has('python3')
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
endif

" For lint
Plug 'dense-analysis/ale'

" For cheatsheet
Plug 'reireias/vim-cheatsheet'

" For go
Plug 'mattn/vim-goimports'
Plug 'sebdah/vim-delve'

" For markdown
Plug 'skanehira/preview-markdown.vim'
Plug 'mattn/vim-maketable'

" -------------------------------------
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
