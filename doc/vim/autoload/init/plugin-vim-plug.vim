" -------------------------------------
" Plugin manager
"   vim-plug settings
" -------------------------------------
" Locations
let s:mnger_dir = g:dotfiles_dir . '/.cache/vim-plug'
let s:plugins_dir = s:mnger_dir . '/plugged'

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  execute '!sh ' . g:dotfiles_dir . '/etc/init/install-vim-plug.sh'
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : s:plugins_dir)

" Declare the list of plugins.
Plug 'vim-jp/vimdoc-ja'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
