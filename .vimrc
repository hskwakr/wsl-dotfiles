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

" General settings
filetype plugin indent on
syntax enable

" -------------------------------------
" Import setting files
" -------------------------------------
" Locations
let s:vimrc_dir = g:dotfiles_dir . '/doc/vimrc'
let s:init_dir = s:vimrc_dir . '/init'
let s:plugins_dir = s:vimrc_dir . '/plugins'

" Specific settings for init 
execute 'source' . s:init_dir . '/basic.vim'
execute 'source' . s:init_dir . '/plugin-vim-plug.vim'
execute 'source' . s:init_dir . '/indent.vim'

" Specific settings for plugins 
execute 'source' . s:plugins_dir . '/plugins-vimdoc-ja.vim'
execute 'source' . s:plugins_dir . '/plugins-gruvbox-material.vim'
execute 'source' . s:plugins_dir . '/plugins-lightline.vim'
execute 'source' . s:plugins_dir . '/plugins-lsp.vim'
execute 'source' . s:plugins_dir . '/plugins-asyncomplete.vim'
execute 'source' . s:plugins_dir . '/plugins-snipmate.vim'
