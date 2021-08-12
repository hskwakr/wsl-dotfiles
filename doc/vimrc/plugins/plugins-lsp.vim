" -------------------------------------
" Settings for plugins
"   prabirshrestha/vim-lsp
"   mattn/vim-lsp-settings
" -------------------------------------
UsePlugin 'vim-lsp'
UsePlugin 'vim-lsp-settings'

" Directory to install servers
let s:lsp_settings_dir = g:dotfiles_cache_dir . '/vim-cache/lsp-settings'
if !isdirectory(s:lsp_settings_dir)
  call mkdir(s:lsp_settings_dir, 'p')
endif

" Locations for server and settings
let g:lsp_settings_global_settings_dir = s:lsp_settings_dir
let g:lsp_settings_servers_dir = s:lsp_settings_dir

" Settings from:
" https://mattn.kaoriya.net/software/vim/20191231213507.htm
function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> gs <plug>(lsp-hover)
  nmap <buffer> <f2> <plug>(lsp-rename)
  "inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
command! LspDebug let lsp_log_verbose=1 | let lsp_log_file = s:lsp_settings_dir . '/lsp.log'

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_float_cursor = 1
let g:lsp_text_edit_enabled = 1
let g:lsp_insert_text_enabled = 1

" For Go
let g:lsp_settings_filetype_go = [
\   'gopls',
\   'golangci-lint-langserver',
\ ]
