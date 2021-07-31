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
execute 'source' . s:init_dir . '/indent.vim'
execute 'source' . s:init_dir . '/vim-plug.vim'

" g:plugs is a global variable by vim-plug
let s:plugs = get(s:, 'plugs', get(g:, 'plugs', {}))
function! FindPlugin(name) abort
  return has_key(s:plugs, a:name) ? isdirectory(s:plugs[a:name].dir) : 0
endfunction
" UsePlugin does not load settings when the plugin is not installed
command! -nargs=1 UsePlugin if !FindPlugin(<args>) | finish | endif

" Specific settings for plugins 
call map(split(globpath(s:plugins_dir, '*.vim')), {->[execute('exec "so" v:val')]})
