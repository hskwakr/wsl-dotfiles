" -------------------------------------
" Custom settings
" -------------------------------------
" File Encodings
set fileencodings=utf-8,cp932

" Line number
set number

" Persistent undo
if has('persistent_undo')
  let s:undo_path = g:dotfiles_cache_dir . '/vim-cache/undo'
  if !isdirectory(s:undo_path)
    call mkdir(s:undo_path, 'p')
  endif
  exe 'set undodir=' . s:undo_path
  set undofile
endif

" Backup
let s:backup_path = g:dotfiles_cache_dir . '/vim-cache/backup'
if !isdirectory(s:backup_path)
  call mkdir(s:backup_path, 'p')
endif
exe 'set backupdir=' . s:backup_path
set backup

" Indentation
set smartindent

" Clipboad
set clipboard+=unnamed

" Statusline
set laststatus=2

" Show Command-Line completion on statusline
set wildmenu

" backspace
set backspace=indent,eol,start

" Key mapping
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
