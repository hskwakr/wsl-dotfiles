" -------------------------------------
" Settings for plugins
"   'dense-analysis/ale'
" -------------------------------------
UsePlugin 'ale'

let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'go': [
\       'goimports',
\       'gofmt',
\   ],
\}
