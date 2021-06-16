" -----------------------------------------------------------------------------
" Common settings
" -----------------------------------------------------------------------------
" Defaults sttings for beginners
source $VIMRUNTIME/defaults.vim

" Required from dein.vim:
if &compatible
  set nocompatible " Be iMproved
endif

" -----------------------------------------------------------------------------
" Package manager
" - dein.vim settings
" -----------------------------------------------------------------------------
" DIR
let s:dotfiles_dir = expand('~/wsl-dotfiles')
let s:dein_dir = s:dotfiles_dir . '/.cache/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:vim_doc_dir = s:dotfiles_dir . '/doc/vim/'

" Installation check for dein.vim
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!sh ' . s:dotfiles_dir . '/etc/init/vim-plugin-manager.sh'
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" Begin settings
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .tomlfile
  if !isdirectory(s:vim_doc_dir)
    call mkdir(s:vim_doc_dir, 'p')
  endif
  let s:toml = s:vim_doc_dir . '/dein.toml'

  " Read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})

  " End settings
  call dein#end()
  call dein#save_state()
endif

" Plugin installation check
if dein#check_install()
 call dein#install()
endif

" Plugin remove check
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
endif

" -----------------------------------------------------------------------------
" Custom settings
" -----------------------------------------------------------------------------
" Required from dein.vim:
filetype plugin indent on
syntax enable

" To read original help in Japanese
set helplang=ja
