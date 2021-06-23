" -------------------------------------
" Indent
"   based on file type
" -------------------------------------
if did_filetype()
  finish
endif

" -------------------------------------
" indent
autocmd FileType vim  setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType sh   setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType bash setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
