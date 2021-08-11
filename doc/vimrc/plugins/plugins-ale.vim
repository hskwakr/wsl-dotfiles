" -------------------------------------
" Settings for plugins
"   'dense-analysis/ale'
" -------------------------------------
UsePlugin 'ale'

" Lint
let g:ale_linters = {
\   'go': [
\       'gofmt',
\       'golint',
\       'gopls',
\       'govet',
\   ]
\}

" Fix
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'go': [
\       'goimports',
\       'gofmt',
\   ],
\}
