" -----------------------------------------------------------------------------
" Common settings
" -----------------------------------------------------------------------------
" Defaults sttings for beginners
source $VIMRUNTIME/defaults.vim

" -----------------------------------------------------------------------------
" Package manager
" - dein.vim settings
" -----------------------------------------------------------------------------
" Install dir
let s:dotfiles_dir = expand('~/wsl-dotfiles')
let s:dein_dir = s:dotfiles_dir . '/.cache/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" Installation check for dein.vim
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute 'sh ' . s:dotfiles_dir . '/etc/init/vim-plugin-manager.sh'
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

if &compatible
  set nocompatible " Be iMproved
endif

" Begin settings
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " end settings
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif
