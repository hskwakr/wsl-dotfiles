" -------------------------------------
" Settings for plugin
"   sainnhe/gruvbox-material
" -------------------------------------
" Important!!
if has('termguicolors')
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

" Custom configulations
" see :help gruvbox-material-configulation
let g:gruvbox_material_diagnostic_text_highlight = 1

if index(getcompletion('', 'color'), 'gruvbox-material') >= 0 
  colorscheme gruvbox-material
endif
