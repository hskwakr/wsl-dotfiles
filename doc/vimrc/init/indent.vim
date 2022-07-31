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
  autocmd FileType vim        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType sh         setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType bash       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType go         setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType php        setlocal shiftwidth=4 softtabstop=4 tabstop=2 expandtab
  autocmd FileType css        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType xml        setlocal shiftwidth=4 softtabstop=4 tabstop=2 expandtab
  autocmd FileType html       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
augroup END
