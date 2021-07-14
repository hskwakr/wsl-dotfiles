" -------------------------------------
" Settings for plugins
"   sainnhe/gruvbox-material
" -------------------------------------
if empty(globpath(&rtp, 'color/gruvbox-material'))
  finish
endif

"  For tmux
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" For dark version.
set background=dark
" For light version.
"set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_disable_italic_comment = 1

colorscheme gruvbox-material
