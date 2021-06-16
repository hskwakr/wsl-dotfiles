" -------------------------------------
" Custom settings
" -------------------------------------
filetype plugin indent on
syntax enable

" File Encodings
set fileencodings=utf-8,cp932

" Line number
set number

" Persistent undo
if has('persistent_undo')
  let s:undo_path = g:dotfiles_dir . '/.cache/undo'
  if !isdirectory(s:undo_path)
    call mkdir(s:undo_path, 'p')
  endif
  exe 'set undodir=' .. s:undo_path
  set undofile
endif

" Indentation
set smartindent

" Clipboad
set clipboard+=unnamed

" Statusline
set laststatus=2

" Show Command-Line completion on statusline
set wildmenu

