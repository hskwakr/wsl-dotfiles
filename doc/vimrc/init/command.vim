" -------------------------------------
"  Commands
" -------------------------------------
" autocmd
augroup init_mycommands
  au!
augroup END

" -------------------------------------
" UsePlugin
" To check all available plugins name:
" :echo keys(g:plugs)

" g:plugs is a global variable by vim-plug
let s:plugs = get(s:, 'plugs', get(g:, 'plugs', {}))
function! FindPlugin(name) abort
  return has_key(s:plugs, a:name) ? isdirectory(s:plugs[a:name].dir) : 0
endfunction
" UsePlugin does not load settings when the plugin is not installed
command! -nargs=1 UsePlugin if !FindPlugin(<args>) | finish | endif
