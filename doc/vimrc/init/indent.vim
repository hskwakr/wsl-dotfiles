" -------------------------------------
" Indent
"   based on file type
" -------------------------------------
if did_filetype()
  finish
endif

" -------------------------------------
" indent
augroup vimrc_indent
  autocmd!
  autocmd FileType vim  setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType sh   setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType bash setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType go   setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType php  setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
augroup END
