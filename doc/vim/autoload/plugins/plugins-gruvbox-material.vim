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

colorscheme gruvbox-material

" For lightline.vim
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox_material'

