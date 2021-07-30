" -------------------------------------
" Settings for plugins
"   junegunn/fzf.vim
" -------------------------------------

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" - Popup window (center of the screen)
if has('popupwin')
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }
endif

nnoremap <c-f> <nor>
nnoremap <c-f>f :Files<CR>
nnoremap <c-f>b :Buffers<CR>
