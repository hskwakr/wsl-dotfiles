" -------------------------------------
" Common settings
" -------------------------------------
" Defaults sttings for beginner user
source $VIMRUNTIME/defaults.vim

if &compatible
  set nocompatible " Be iMproved
endif

" Locations
let g:dotfiles_dir = expand('~/wsl-dotfiles')

" -------------------------------------
" Import setting files
" -------------------------------------
" Locations
let s:autoload_dir = g:dotfiles_dir . '/doc/vim/autoload'
let s:init_dir = s:autoload_dir . '/init'
let s:plugins_dir = s:autoload_dir . '/plugins'

" Specific settings for init 
execute 'source' . s:init_dir . '/basic.vim'
execute 'source' . s:init_dir . '/plugin-vim-plug.vim'

" Specific settings for plugins 
execute 'source' . s:plugins_dir . '/plugins-vimdoc-ja.vim'
execute 'source' . s:plugins_dir . '/plugins-gruvbox-material.vim'
execute 'source' . s:plugins_dir . '/plugins-lightline.vim'
