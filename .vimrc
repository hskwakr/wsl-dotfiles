" -------------------------------------
" Common settings
" -------------------------------------
" Defaults sttings for beginner user
" source $VIMRUNTIME/defaults.vim

if &compatible
  set nocompatible " Be iMproved
endif

" Locations
let g:dotfiles_dir = expand('~/wsl-dotfiles')
let g:dotfiles_cache_dir = expand('~/.cache/dotfiles')

" General settings
filetype plugin indent on
syntax enable

" -------------------------------------
" Load setting files
" -------------------------------------
" Locations
let s:vimrc_dir = g:dotfiles_dir . '/doc/vimrc'
let s:init_dir = s:vimrc_dir . '/init'
let s:plugins_dir = s:vimrc_dir . '/plugins'

" Specific settings for init 
execute 'source' . s:init_dir . '/basic.vim'
execute 'source' . s:init_dir . '/vim-plug.vim'
execute 'source' . s:init_dir . '/indent.vim'

" Specific settings for plugins 
call map(split(globpath(s:plugins_dir, '*.vim')), {->[execute('exec "so" v:val')]})
