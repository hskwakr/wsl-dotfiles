" -------------------------------------
" Common settings
" -------------------------------------
" Defaults sttings for beginner user
source $VIMRUNTIME/defaults.vim

if &compatible
  set nocompatible " Be iMproved
endif

" -------------------------------------
" Global variables
" -------------------------------------
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
runtime! s:init_dir . '/*.vim'
" Specific settings for plugins 
runtime! s:plugins_dir . '/*.vim'
