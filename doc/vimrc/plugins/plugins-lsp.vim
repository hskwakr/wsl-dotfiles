" -------------------------------------
" Settings for plugins
"   prabirshrestha/vim-lsp
"   mattn/vim-lsp-settings
" -------------------------------------
" Directory to install servers
let s:lsp_settings_dir = g:dotfiles_dir . '/.cache/vim-lsp-settings'
if !isdirectory(s:lsp_settings_dir)
  call mkdir(s:lsp_settings_dir, 'p')
endif

let g:lsp_settings_global_settings_dir = s:lsp_settings_dir
let g:lsp_settings_servers_dir = s:lsp_settings_dir
