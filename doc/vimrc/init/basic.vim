" -------------------------------------
" Custom settings
" -------------------------------------
" General

" File Encodings
set fileencodings=utf-8,cp932

" Line number
set number

" Indentation
set smartindent

" Clipboad
set clipboard+=unnamed

" backspace
set backspace=indent,eol,start

" hilight a line of the cursor
set cursorline

" -------------------------------------
" Statusline

" Statusline
set laststatus=2

" Show Command-Line completion on statusline
set wildmenu

" Appearance of statusline
set statusline=
" filepath
set statusline+=\ %t
" modified sign
set statusline+=%{&modified?'[+]':''}
" separator
set statusline+=\%=
" filetype
set statusline+=\ [
set statusline+=\ %Y
set statusline+=\ ]
" buffer number
set statusline+=\ BUF:\%4n
" col number
set statusline+=\ COL:\%4v
" line percentage
set statusline+=\ ROW:\%4p%%
" space
set statusline+=\ %(%)

" -------------------------------------
" Key mappings

nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv

" -------------------------------------
" Backups

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
